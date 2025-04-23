variable "name_prefix" {
  type        = string
  default     = "cmtr-dfc0edb2-mod8"
  description = "Prefix for naming resources"
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "The Azure region where the resource will be deployed"
}

variable "tags" {
  type = map(string)
  default = {
    Creator     = "sourabh_suryawanshi@epam.com"
    description = "Tags for the resources"
  }
}

variable "git_pat" {
  type        = string
  sensitive   = true
  description = "Git Personal Access Token for ACR task"
}

variable "admin_enabled" {
  description = "Enable admin access to ACR"
  type        = bool
}

variable "node_count" {
  description = "Number of nodes for AKS cluster"
  type        = number
}

variable "vm_size" {
  description = "Size of the VM for AKS cluster nodes"
  type        = string
}

variable "redis_connection_string" {
  description = "The connection string for the Azure Redis instance"
  type        = string
  sensitive   = true
}
variable "resource_group_name" {
  description = "Name of the resource group where resources will be deployed"
  type        = string
}
variable "redis_hostname" {
  description = "The hostname of the Azure Redis Cache"
  type        = string
  sensitive   = true
}
variable "redis_primary_key" {
  description = "The primary access key for the Azure Redis Cache"
  type        = string
  sensitive   = true
}
