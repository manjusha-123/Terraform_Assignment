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

resource "azurerm_databricks_workspace" "example" {
  name                = "databricks-test"
  resource_group_name = "DevOps-training"
  location            = "East US"
  sku                 = "standard"

  tags = {
    Environment = "Production"
  }
}