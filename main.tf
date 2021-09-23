# main.tf - Using Terraform to Create Kubernetes cluster
# with Azure Kubernetes Service

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "tfstate"
        storage_account_name = "storaccount413"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
        access_key = "ryFnbM0fFgaDmMC99S4tRgTWgoJ4M5uIwvuR5Rx2BZErCsJhrcy3wL1tDYIkcfodlJLc0sx7yWsm3cMtWs0qYQ=="
    }
  }

provider "azurerm" {
  skip_provider_registration = true
  features {}
}

