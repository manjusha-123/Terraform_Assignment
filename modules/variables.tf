variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  #default     = "my-aks-cluster"  # Default value
}

variable "res_location" {
  description = "Location of the AKS cluster"
  type        = string
  default     = "East US"  # Default value
}

variable "res_grp_name" {
  description = "Name of the resource group for AKS"
  type        = string
  #default     = "my-resource-group"  # Default value
}

variable "node_count" {
  description = "Number of nodes in the node pool"
  type        = number
  #default     = 3  # Default value
}
variable "min_count" {
    type = number
  #default     = 1
}

variable "max_count" {
    type = number
  #default     = 5
}
variable "max_pods" {
    type = number
  #default     = 40
}

variable "node_vm_size" {
  description = "Size of the VMs in the node pool"
  type        = string
  default     = "Standard_DS2_v3"  # Default value
}
 variable "env" {
  type = string
  description = "Name of the environment"
   
 }

# Define other variables as needed
