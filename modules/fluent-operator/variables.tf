variable "platform" { 
  type = string
  validation {
    condition     = length(regexall("^(aws|gcp)$", var.platform)) > 0
    error_message = "ERROR: Valid types are \"aws\" and \"gcp\"!"
  }
}


variable "cluster_name" {
  description = "EKS or GKE cluster name"
}

variable "region" {
  description = "AWS or GCP region"
}




