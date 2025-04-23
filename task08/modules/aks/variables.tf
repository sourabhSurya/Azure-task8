variable "aks_name" {}
variable "dns_prefix" {}
variable "location" {}
variable "resource_group_name" {}
variable "node_count" {
  type = number
}
variable "vm_size" {}
variable "acr_id" {}
variable "tags" {
  type = map(string)
}
