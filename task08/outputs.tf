output "aci_fqdn" {
  value = azurerm_container_group.aci.fqdn
}

output "aks_kube_config" {
  value     = module.aks.kube_config
  sensitive = true
}

output "aks_lb_ip" {
  description = "The public IP from the AKS module"
  value       = module.aks.aks_lb_ip
}

