terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.66.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.2.2"
    }

    helm =  {
      source  = "hashicorp/helm"
      version = "~> 2.4.1"
  }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.8.0"
    }

}

  required_version = ">= 0.14"
  }




