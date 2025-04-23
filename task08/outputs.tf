output "aci_fqdn" {
  description = "The FQDN of the Azure Container Instance"
  value       = azurerm_container_group.aci.fqdn
}

output "aks_lb_ip" {
  description = "The public IP from the AKS module"
  value       = module.aks.aks_lb_ip
}

