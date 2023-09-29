locals {

  repo = "infrastructure-fluent-operator"

  shared_k8s_labels = {
    "managed-by"          = "terraform"
    "galaxy.ma/repo"  = local.repo
  }


}

resource "kubernetes_namespace" "fluent_operator" {
  metadata {
    name   = "fluent-operator"
    labels = { 
      "app.kubernetes.io/name" = "fluent-operator" 
    }
    annotations = {
      "downscaler/exclude"      = "true"
    }
  }
}


