module github.com/rancher/webhook

go 1.22.0

toolchain go1.22.7

replace (
	github.com/rancher/rancher/pkg/apis => github.com/cnrancher/pandaria/pkg/apis v0.0.0-20250114025729-9568343c5ac4
	github.com/rancher/rke => github.com/rancher/rke v1.5.13
	k8s.io/api => k8s.io/api v0.28.6
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.28.6
	k8s.io/apimachinery => k8s.io/apimachinery v0.28.6
	k8s.io/apiserver => k8s.io/apiserver v0.28.6
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.28.6
	k8s.io/client-go => github.com/rancher/client-go v1.28.6-rancher1
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.28.6
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.28.6
	k8s.io/code-generator => k8s.io/code-generator v0.28.6
	k8s.io/component-base => k8s.io/component-base v0.28.6
	k8s.io/component-helpers => k8s.io/component-helpers v0.28.6
	k8s.io/controller-manager => k8s.io/controller-manager v0.28.6
	k8s.io/cri-api => k8s.io/cri-api v0.28.6
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.28.6
	k8s.io/dynamic-resource-allocation => k8s.io/dynamic-resource-allocation v0.28.6
	k8s.io/endpointslice => k8s.io/endpointslice v0.28.6
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.28.6
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.28.6
	k8s.io/kube-openapi => k8s.io/kube-openapi v0.0.0-20230717233707-2695361300d9
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.28.6
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.28.6
	k8s.io/kubectl => k8s.io/kubectl v0.28.6
	k8s.io/kubelet => k8s.io/kubelet v0.28.6
	k8s.io/kubernetes => k8s.io/kubernetes v1.28.6
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.28.6
	k8s.io/metrics => k8s.io/metrics v0.28.6
	k8s.io/mount-utils => k8s.io/mount-utils v0.28.6
	k8s.io/pod-security-admission => k8s.io/pod-security-admission v0.28.6
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.28.6
	sigs.k8s.io/structured-merge-diff/v4 => sigs.k8s.io/structured-merge-diff/v4 v4.2.3
)

require (
	github.com/blang/semver v3.5.1+incompatible
	github.com/evanphx/json-patch v5.6.0+incompatible
	github.com/golang/mock v1.6.0
	github.com/gorilla/mux v1.8.0
	github.com/rancher/dynamiclistener v0.4.0
	github.com/rancher/lasso v0.0.0-20240705194423-b2a060d103c1
	github.com/rancher/rancher/pkg/apis v0.0.0-20241216141324-3339dff5e48f
	github.com/rancher/rke v1.5.15
	github.com/rancher/wrangler/v2 v2.1.4
	github.com/robfig/cron v1.2.0
	github.com/sirupsen/logrus v1.9.3
	github.com/stretchr/testify v1.10.0
	golang.org/x/exp v0.0.0-20240719175910-8a7402abbf56
	golang.org/x/text v0.21.0
	golang.org/x/tools v0.26.0
	k8s.io/api v0.30.0
	k8s.io/apimachinery v0.30.0
	k8s.io/apiserver v0.28.9
	k8s.io/client-go v12.0.0+incompatible
	k8s.io/kubernetes v1.28.9
	k8s.io/pod-security-admission v0.28.6
	k8s.io/utils v0.0.0-20240711033017-18e509b52bc8
	sigs.k8s.io/controller-runtime v0.16.6
	sigs.k8s.io/yaml v1.4.0
)

require (
	github.com/NYTimes/gziphandler v1.1.1 // indirect
	github.com/antlr/antlr4/runtime/Go/antlr/v4 v4.0.0-20230305170008-8188dc5388df // indirect
	github.com/asaskevich/govalidator v0.0.0-20190424111038-f61b66f89f4a // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/blang/semver/v4 v4.0.0 // indirect
	github.com/cenkalti/backoff/v4 v4.2.1 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/cnrancher/ack-operator v0.0.5-0.20240301031542-f503388fe440 // indirect
	github.com/cnrancher/cce-operator v0.4.6 // indirect
	github.com/cnrancher/tke-operator v0.0.0-20240229091109-62dd98478d65 // indirect
	github.com/coreos/go-semver v0.3.1 // indirect
	github.com/coreos/go-systemd/v22 v22.5.0 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/docker/distribution v2.8.2+incompatible // indirect
	github.com/emicklei/go-restful/v3 v3.11.0 // indirect
	github.com/evanphx/json-patch/v5 v5.7.0 // indirect
	github.com/felixge/httpsnoop v1.0.3 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/ghodss/yaml v1.0.0 // indirect
	github.com/go-logr/logr v1.4.2 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-openapi/jsonpointer v0.21.0 // indirect
	github.com/go-openapi/jsonreference v0.20.2 // indirect
	github.com/go-openapi/swag v0.23.0 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/google/cel-go v0.16.1 // indirect
	github.com/google/gnostic-models v0.6.8 // indirect
	github.com/google/go-cmp v0.6.0 // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.7.0 // indirect
	github.com/imdario/mergo v0.3.16 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.4 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/prometheus/client_golang v1.17.0 // indirect
	github.com/prometheus/client_model v0.4.1-0.20230718164431-9a2bf3000d16 // indirect
	github.com/prometheus/common v0.44.0 // indirect
	github.com/prometheus/procfs v0.11.1 // indirect
	github.com/rancher/aks-operator v1.2.6 // indirect
	github.com/rancher/eks-operator v1.3.6 // indirect
	github.com/rancher/fleet/pkg/apis v0.9.12 // indirect
	github.com/rancher/gke-operator v1.2.6 // indirect
	github.com/rancher/norman v0.0.0-20240206180703-6eda4bc94b4c // indirect
	github.com/spf13/cobra v1.7.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/stoewer/go-strcase v1.2.0 // indirect
	go.etcd.io/etcd/api/v3 v3.5.9 // indirect
	go.etcd.io/etcd/client/pkg/v3 v3.5.9 // indirect
	go.etcd.io/etcd/client/v3 v3.5.9 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.35.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.35.1 // indirect
	go.opentelemetry.io/otel v1.10.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/internal/retry v1.10.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.10.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.10.0 // indirect
	go.opentelemetry.io/otel/metric v0.31.0 // indirect
	go.opentelemetry.io/otel/sdk v1.10.0 // indirect
	go.opentelemetry.io/otel/trace v1.10.0 // indirect
	go.opentelemetry.io/proto/otlp v0.19.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	go.uber.org/zap v1.25.0 // indirect
	golang.org/x/crypto v0.30.0 // indirect
	golang.org/x/mod v0.21.0 // indirect
	golang.org/x/net v0.32.0 // indirect
	golang.org/x/oauth2 v0.24.0 // indirect
	golang.org/x/sync v0.10.0 // indirect
	golang.org/x/sys v0.28.0 // indirect
	golang.org/x/term v0.27.0 // indirect
	golang.org/x/time v0.5.0 // indirect
	gomodules.xyz/jsonpatch/v2 v2.4.0 // indirect
	google.golang.org/genproto v0.0.0-20231106174013-bbf56f31fb17 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20231030173426-d783a09b4405 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20231120223509-83a465c0220f // indirect
	google.golang.org/grpc v1.59.0 // indirect
	google.golang.org/protobuf v1.35.1 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.2.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/apiextensions-apiserver v0.28.9 // indirect
	k8s.io/cloud-provider v0.0.0 // indirect
	k8s.io/code-generator v0.28.9 // indirect
	k8s.io/component-base v0.28.9 // indirect
	k8s.io/component-helpers v0.28.6 // indirect
	k8s.io/controller-manager v0.28.6 // indirect
	k8s.io/gengo v0.0.0-20230829151522-9cce18d56c01 // indirect
	k8s.io/klog v1.0.0 // indirect
	k8s.io/klog/v2 v2.130.1 // indirect
	k8s.io/kms v0.28.9 // indirect
	k8s.io/kube-aggregator v0.28.6 // indirect
	k8s.io/kube-openapi v0.0.0-20240228011516-70dd3763d340 // indirect
	k8s.io/kubelet v0.0.0 // indirect
	sigs.k8s.io/apiserver-network-proxy/konnectivity-client v0.1.2 // indirect
	sigs.k8s.io/cli-utils v0.28.0 // indirect
	sigs.k8s.io/cluster-api v1.5.5 // indirect
	sigs.k8s.io/json v0.0.0-20221116044647-bc3834ca7abd // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.4.2 // indirect
)
