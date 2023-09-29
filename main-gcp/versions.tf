terraform {
  required_version = "~> 1.6.0"

  required_providers {
    google    = {
      source  = "hashicorp/google"
      version = "4.68.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.23.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = "2.11.0"
    }
    template = {
      source = "hashicorp/template"
    }
  }
  backend "gcs" {
  }
}

