output "aks_lb_ip" {
  description = "The public IP address of the AKS load balancer"
  value       = azurerm_public_ip.aks_public_ip.ip_address
}
