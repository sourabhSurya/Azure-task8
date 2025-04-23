location    = "Central US"
name_prefix = "cmtr-dfc0edb2-mod8"

tags = {
  environment = "dev"
  project     = "containerized-app"
}

admin_enabled = true
node_count    = 2
vm_size       = "Standard_DS2_v2"

resource_group_name     = var.resource_group_name  # Set this to the correct resource group name
redis_hostname          = module.redis.hostname    # This will be fetched from the `redis` module
redis_primary_key       = module.redis.primary_key # This will be fetched from the `redis` module
redis_connection_string = module.redis.connection_string
