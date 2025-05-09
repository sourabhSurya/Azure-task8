variable "kv_name" {
  type        = string
  description = "The name of the Azure Key Vault"
}

variable "location" {
  type        = string
  description = "The Azure region where the Key Vault will be deployed"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the Key Vault"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the resources"
}
variable "redis_connection_string" {
  type        = string
  sensitive   = true
  description = "Redis connection path is sensitive"
}
variable "redis_hostname" {
  type        = string
  sensitive   = true
  description = "The hostname of the Redis instance"
}

variable "redis_primary_key" {
  type        = string
  sensitive   = true
  description = "The primary key for the Redis instance"
}

