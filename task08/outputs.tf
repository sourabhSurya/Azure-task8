output "aci_fqdn" {
  value = azurerm_container_group.aci.fqdn
}

output "aks_kube_config" {
  value     = module.aks.kube_config
  sensitive = true
}
