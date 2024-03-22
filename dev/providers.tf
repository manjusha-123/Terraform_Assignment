terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.95.0"
    }
  }

  backend "azurerm" {
      resource_group_name  = "DevOps-training" #Name of the resource group
      storage_account_name = "storageacttfassign" #Name of the storage account 
      container_name       = "container-dev" #Name of the container inside storage account
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  # Configuration options
  
}