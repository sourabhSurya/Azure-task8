# resource "azurerm_redis_cache" "redis" {
#   name                = var.redis_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   capacity            = 0
#   family              = "C"
#   sku_name            = "Basic"
#   enable_non_ssl_port = false
#   minimum_tls_version = "1.2"
#   tags                = var.tags
# }

resource "azurerm_redis_cache" "redis" {
  name                = var.redis_name
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = 0
  family              = "C"
  sku_name            = "Basic"
  minimum_tls_version = "1.2"
  tags                = var.tags
}

