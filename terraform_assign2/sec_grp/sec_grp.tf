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
  # Configuration optionsgit
}
resource "azurerm_network_security_group" "example" {
  name                = "example-security-group"
  location            = "East US"
  resource_group_name = "DevOps-training"
}