package project

import (
	"fmt"

	"github.com/rancher/norman/types/convert"
	mgmtv3 "github.com/rancher/rancher/pkg/apis/management.cattle.io/v3"
	corev1 "k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/api/resource"
	quotav1 "k8s.io/apiserver/pkg/quota/v1"
)

const (
	// PANDARIA
	StorageClassPVCQuotaSuffix     = "storageclass.storage.k8s.io/persistentvolumeclaims"
	StorageClassStorageQuotaSuffix = "storageclass.storage.k8s.io/requests.storage"
	StorageClassPVCQuotaKey        = "requestsStorageClassPVC"
	StorageClassStorageQuotaKey    = "requestsStorageClassStorage"
)

// quotaFits checks whether the quota in the second argument is sufficient for the requested quota in the first argument.
// If it is not sufficient, a list of the resources that exceed the allotment is returned.
// The ResourceList to be checked can be compiled by passing a
// ResourceQuotaLimit to convertLimitToResourceList before calling this
// function on the result.
func quotaFits(resourceListA corev1.ResourceList, resourceListB corev1.ResourceList) (bool, corev1.ResourceList) {
	_, exceeded := quotav1.LessThanOrEqual(resourceListA, resourceListB)
	// Include resources with negative values among exceeded resources.
	exceeded = append(exceeded, quotav1.IsNegative(resourceListA)...)
	if len(exceeded) == 0 {
		return true, nil
	}
	failedHard := quotav1.Mask(resourceListA, exceeded)
	return false, failedHard
}

const ExtendedKey = "extended"

var (
	resourceQuotaConversion = map[string]string{
		"replicationControllers": "replicationcontrollers",
		"configMaps":             "configmaps",
		"persistentVolumeClaims": "persistentvolumeclaims",
		"servicesNodePorts":      "services.nodeports",
		"servicesLoadBalancers":  "services.loadbalancers",
		"requestsCpu":            "requests.cpu",
		"requestsMemory":         "requests.memory",
		"requestsStorage":        "requests.storage",
		"limitsCpu":              "limits.cpu",
		"limitsMemory":           "limits.memory",
	}
)

// convertLimitToResourceList converts a management.cattle.io/v3 ResourceQuotaLimit object to a core/v1 ResourceList,
// which can then be used to compare quotas.
func convertLimitToResourceList(limit *mgmtv3.ResourceQuotaLimit) (corev1.ResourceList, error) {
	// TECH DEBT: Any change here has to be reflected in rancher/rancher pkg/resourcequota/quota_validate.go
	// until such time as both places are unified in a single function shared between r/r and r/w

	toReturn := corev1.ResourceList{}
	converted, err := convert.EncodeToMap(limit)
	if err != nil {
		return nil, err
	}

	// convert the extended set first, ...
	if extended, ok := converted[ExtendedKey]; ok {
		delete(converted, ExtendedKey)
		for key, value := range extended.(map[string]any) {
			resourceName := corev1.ResourceName(key)
			resourceQuantity, err := resource.ParseQuantity(value.(string))
			if err != nil {
				return nil, fmt.Errorf("failed to parse value for key %q: %w", key, err)
			}

			toReturn[resourceName] = resourceQuantity
		}
	}

	// then place the fixed data. this order ensures that in case of
	// conflicts between arbitrary and fixed data the fixed data wins.
	for key, value := range converted {
		switch value.(type) {
		case string:
			q, err := resource.ParseQuantity(convert.ToString(value))
			if err != nil {
				return nil, err
			}
			toReturn[corev1.ResourceName(key)] = q
		case map[string]interface{}:
			valuemaps := value.(map[string]interface{})
			for k, v := range valuemaps {
				valueString, ok := v.(string)
				if ok {
					q, err := resource.ParseQuantity(valueString)
					if err != nil {
						return nil, err
					}
					var rn corev1.ResourceName
					switch key {
					case StorageClassStorageQuotaKey:
						resourceNameStr := fmt.Sprintf("%s.%s", k, StorageClassStorageQuotaSuffix)
						rn = corev1.ResourceName(resourceNameStr)
					case StorageClassPVCQuotaKey:
						resourceNameStr := fmt.Sprintf("%s.%s", k, StorageClassPVCQuotaSuffix)
						rn = corev1.ResourceName(resourceNameStr)
					default:
						rn = corev1.ResourceName(key)
					}
					toReturn[rn] = q
				}
			}
		}
	}
	return toReturn, nil
}
