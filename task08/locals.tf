locals {
  rg_name        = "${var.name_prefix}-rg"
  acr_name       = replace("${var.name_prefix}cr", "-", "")
  aks_name       = "${var.name_prefix}-aks"
  aci_name       = "${var.name_prefix}-ci"
  keyvault_name   = "${var.name_prefix}-kv"  
  redis_name     = "${var.name_prefix}-redis"
  app_image_name = "${var.name_prefix}-app"
}
