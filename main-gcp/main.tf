
module "fluent-operator" {
  source                        = "../modules/fluent-operator"

  platform                      = "gcp"
  region                        = var.gcp_region

  cluster_name                  = var.cluster_name


}