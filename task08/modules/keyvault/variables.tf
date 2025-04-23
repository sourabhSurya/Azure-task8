variable "kv_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "tags" {
  type = map(string)
}
variable "redis_connection_string" {
  type      = string
  sensitive = true
}
