variable "container_group_name" {
  type        = string
  description = "Name of the Azure Container Instance group"
}

variable "container_name" {
  type        = string
  description = "Name of the container inside the group"
}

variable "container_image" {
  type        = string
  description = "Container image to be deployed"
}

variable "container_port" {
  type        = number
  description = "Port exposed by the container"
}

variable "dns_name_label" {
  type        = string
  description = "DNS name label for the ACI"
}

variable "location" {
  type        = string
  description = "Azure region for deployment"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group where ACI will be created"
}

variable "redis_connection_string" {
  type        = string
  sensitive   = true
  description = "Redis connection string for the app"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the resources"
}

