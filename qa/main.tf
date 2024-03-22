module "my-aks-cluster" {
  source = "../modules"  # Update the path to point to your module directory

  aks_cluster_name = "qa-${var.aks_cluster_name_env}"
  res_location     = var.res_location_env
  res_grp_name     = var.res_grp_name_env
  node_count       = var.node_count_env
  min_count        = var.min_count_env  # Example value, adjust as needed
  max_count        = var.max_count_env # Example value, adjust as needed
  max_pods         = var.max_pods_env # Example value, adjust as needed
  node_vm_size     = var.node_vm_size_env
  env = var.envi
}
