variable "acr_name" {
  type        = string
  description = "Name of the Azure Container Registry"
}
variable "location" {
  type        = string
  description = "Azure region where ACR will be deployed"
}
variable "resource_group_name" {
  type        = string
  description = "Resource group name where ACR will be created"
}
variable "sku" {
  type        = string
  description = "SKU tier of ACR (e.g., Basic, Standard, Premium)"
}
variable "image_name" {
  type        = string
  description = "Name of the container image to be pushed to ACR"
}
variable "git_pat" {
  type        = string
  sensitive   = true
  description = "Git path contain the sensitive path of registry"
}
variable "tags" {
  type        = map(string)
  description = "Tags for the resources"
}

