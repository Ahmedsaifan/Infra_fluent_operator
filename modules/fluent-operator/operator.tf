locals {
}





data "template_file" "fluent_operator_values" {
  template = <<EOF

Kubernetes: false

operator:
  disableComponentControllers: fluentd

fluentd:
  crdsEnable: false

fluentbit:
  # apply CRD manually when upgrading chart version
  crdsEnable : true


EOF


}


resource "helm_release" "fluent_operator" {
  name       = "fluent-operator"
  chart      = "https://github.com/fluent/fluent-operator/releases/download/v2.7.0/fluent-operator.tgz"
  namespace  = kubernetes_namespace.fluent_operator.metadata[0].name

  # Default values
  # https://github.com/fluent/fluent-operator/blob/v2.7.0/charts/fluent-operator/values.yaml
  values      = [data.template_file.fluent_operator_values.rendered]
  max_history = 5
}



















