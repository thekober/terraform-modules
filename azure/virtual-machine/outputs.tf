output "vm_id" {
  description = "ID of the created VM"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "Name of the created VM"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "private_ip_address" {
  description = "Private IP address of the VM"
  value       = azurerm_linux_virtual_machine.vm.private_ip_address
}
