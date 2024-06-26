/*resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_network_security_group" "example" {
  name                = "example-security-group"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
*/
resource "azurerm_virtual_network" "example" {
  name                = "vnet-assign2"
  resource_group_name      = "DevOps-training"
  location                 = "East US"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  

  tags = {
    environment = "Testing"
    createdby = "Manjusha"
  }
}
