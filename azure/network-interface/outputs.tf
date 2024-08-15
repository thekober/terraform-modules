output "nic_id" {
  description = "ID of the created network interface"
  value       = azurerm_network_interface.nic.id
}

output "nic_private_ip" {
  description = "Private IP address of the network interface"
  value       = azurerm_network_interface.nic.private_ip_address
}
