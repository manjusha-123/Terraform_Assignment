variable "aks_cluster_name_env" {
  description = "Name of the AKS cluster"
  type        = string
  #default     = "my-aks-cluster"  # Default value
}

variable "res_location_env" {
  description = "Location of the AKS cluster"
  type        = string
  default     = "East US"  # Default value
}

variable "res_grp_name_env" {
  description = "Name of the resource group for AKS"
  type        = string
  #default     = "my-resource-group"  # Default value
}

variable "node_count_env" {
  description = "Number of nodes in the node pool"
  type        = number
  #default     = 3  # Default value
}
variable "min_count_env" {
    type = number
  
}

variable "max_count_env" {
    type = number
  
}
variable "max_pods_env" {
    type = number
  
}

variable "node_vm_size_env" {
  description = "Size of the VMs in the node pool"
  type        = string
  default     = "Standard_DS2_v2"  # Default value
}
variable "envi" {
  type = string
  description = "Name of the environment"
   
 }
