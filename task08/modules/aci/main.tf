resource "azurerm_container_group" "aci" {
  name                = var.container_group_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"

  container {
    name   = var.container_name
    image  = var.container_image
    cpu    = 0.5
    memory = 1.5

    environment_variables = {
      REDIS_CONNECTION_STRING = var.redis_connection_string
    }

    ports {
      port     = var.container_port
      protocol = "TCP"
    }
  }

  ip_address_type = "Public"
  dns_name_label  = var.dns_name_label
  tags            = var.tags
}
