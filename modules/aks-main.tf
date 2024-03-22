resource "azurerm_kubernetes_cluster" "my-aks-cluster" {
  name                = var.aks_cluster_name
  location            = var.res_location
  resource_group_name = var.res_grp_name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    min_count =var.min_count
    max_count =var.max_count
    max_pods =var.max_pods
    vm_size    = var.node_vm_size
    type = "VirtualMachineScaleSets"
    enable_auto_scaling = true
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = var.env
    created-by = "Manjusha"
    created-date = formatdate("EEE, DD MMM YYYY hh:mm:ss ZZZ",timestamp())
  }
}
output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.my-aks-cluster.name
  
}