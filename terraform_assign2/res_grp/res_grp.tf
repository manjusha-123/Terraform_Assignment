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
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}