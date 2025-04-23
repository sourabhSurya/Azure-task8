output "hostname" {
  value       = azurerm_redis_cache.redis.hostname
  description = "Redis hostname"
}

output "primary_key" {
  value       = azurerm_redis_cache.redis.primary_access_key
  description = "Redis primary access key"
}

output "connection_string" {
  value       = azurerm_redis_cache.redis.primary_connection_string
  description = "Redis connection string"
}
