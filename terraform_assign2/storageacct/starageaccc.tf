terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = "3.95.0"
    }
  }
}

provider "azurerm" {
    features{}
    skip_provider_registration = true
  # Configuration options
}


resource "azurerm_storage_account" "example" {
  name                     = "storageaccount70327"
  resource_group_name      = "DevOps-training"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
    createdby = "Manjusha"
  }
}