variable "container_group_name" {}
variable "container_name" {}
variable "container_image" {}
variable "container_port" {
  type = number
}
variable "dns_name_label" {}
variable "location" {}
variable "resource_group_name" {}
variable "redis_connection_string" {
  type      = string
  sensitive = true
}
variable "tags" {
  type = map(string)
}
