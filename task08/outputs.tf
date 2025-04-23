output "aci_fqdn" {
  description = "The FQDN of the Azure Container Instance"
  value       = azurerm_container_group.aci.fqdn
}

output "aks_kube_config" {
  description = "The Kubernetes config for the AKS cluster"
  value       = module.aks.kube_config
  sensitive   = true
}

output "aks_lb_ip" {
  description = "The public IP from the AKS module"
  value       = module.aks.aks_lb_ip
}

