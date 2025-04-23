variable "aks_name" {
  type        = string
  description = "Name of the Azure Kubernetes Service cluster"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for the AKS cluster"
}

variable "location" {
  type        = string
  description = "Azure region where AKS will be deployed"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name where AKS will be created"
}

variable "node_count" {
  type        = number
  description = "Number of nodes in the AKS cluster"
}

variable "vm_size" {
  type        = string
  description = "Size of the virtual machines in the AKS cluster"
}

variable "acr_id" {
  type        = string
  description = "Azure Container Registry ID to allow AKS to pull images"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the AKS cluster"
}

