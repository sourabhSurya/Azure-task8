provider "azurerm" {
  features {}
}

locals {
  location = "Central US"
  tags = {
    environment = "dev"
    project     = "containerized-app"
  }
}


# Azure Key Vault
module "keyvault" {
  source                  = "./modules/keyvault"
  kv_name                 = local.kv_name
  location                = local.location
  resource_group_name     = var.resource_group_name
  tags                    = local.tags
  redis_hostname          = var.redis_hostname
  redis_primary_key       = var.redis_primary_key
  redis_connection_string = var.redis_connection_string
}


# Azure Redis
module "redis" {
  source              = "./modules/redis"
  redis_name          = "rediscontainerappdemo" # Specify the Redis instance name
  resource_group_name = module.resource_group.name
  location            = local.location
  tags                = local.tags
}


module "acr" {
  source              = "./modules/acr"
  acr_name            = "acrcontainerdemo" # This was previously missing
  sku                 = "Basic"            # Add SKU value (can be "Basic", "Standard", or "Premium")
  git_pat             = var.git_pat        # Add your GitHub Personal Access Token (PAT) here
  image_name          = "myapp"            # Specify your Docker image name here
  resource_group_name = module.resource_group.name
  location            = local.location
  #   admin_enabled       = true
  tags = local.tags
}


# Azure Container Instance
module "aci" {
  source                  = "./modules/aci"
  container_group_name    = "aci-demo"
  container_name          = "appcontainer"
  container_image         = "${module.acr.login_server}/myapp:latest"
  container_port          = 80
  dns_name_label          = "appcontainer-${random_id.dns.hex}"
  location                = local.location
  resource_group_name     = module.resource_group.name
  redis_connection_string = module.redis.redis_connection_string
  tags                    = local.tags
}

# Azure Kubernetes Service
module "aks" {
  source              = "./modules/aks"
  aks_name            = "aks-demo"
  dns_prefix          = "aksdemo"
  location            = local.location
  resource_group_name = module.resource_group.name
  node_count          = 2
  vm_size             = "Standard_DS2_v2"
  acr_id              = module.acr.id
  tags                = local.tags
}

resource "random_id" "dns" {
  byte_length = 3
}

resource "local_file" "deployment_yaml" {
  content = templatefile("${path.module}/k8s-manifests/deployment.yaml.tftpl", {
    image_name = "${azurerm_container_registry.acr.login_server}/myapp:latest"
    redis_host = module.redis.hostname
  })
  filename = "${path.module}/rendered/deployment.yaml"
}

resource "local_file" "service_yaml" {
  content  = file("${path.module}/k8s-manifests/service.yaml")
  filename = "${path.module}/rendered/service.yaml"
}

# Only if using Key Vault
resource "local_file" "secret_provider_yaml" {
  content = templatefile("${path.module}/k8s-manifests/secret-provider.yaml.tftpl", {
    key_vault_name = module.keyvault.name,
    tenant_id      = data.azurerm_client_config.current.tenant_id
  })
  filename = "${path.module}/rendered/secret-provider.yaml"
}

