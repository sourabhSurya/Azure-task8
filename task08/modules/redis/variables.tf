variable "redis_name" {
  type        = string
  description = "The name of the Azure Redis Cache instance"
}

variable "location" {
  type        = string
  description = "The Azure region where Redis will be deployed"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the Redis instance"
}

variable "tags" {
  type = map(string)
}
