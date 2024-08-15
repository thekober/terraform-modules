output "public_ip_id" {
  description = "ID of the created public IP"
  value       = azurerm_public_ip.pip.id
}

output "public_ip_address" {
  description = "The public IP address"
  value       = azurerm_public_ip.pip.ip_address
}
