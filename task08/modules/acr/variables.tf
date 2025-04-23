variable "acr_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "sku" {}
variable "image_name" {}
variable "git_pat" {
  type      = string
  sensitive = true
}
variable "tags" {
  type = map(string)
}


variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "sku" {
  description = "SKU tier for ACR (Basic, Standard, Premium)"
  type        = string
}

variable "image_name" {
  description = "Name of the Docker image"
  type        = string
}

variable "git_pat" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}
