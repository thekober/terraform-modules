variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "network_interface_id" {
  description = "ID of the network interface to attach to the VM"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to the public SSH key"
  type        = string
}

variable "os_image" {
  description = "OS image for the VM"
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

variable "tags" {
  description = "Tags to apply to the VM"
  type        = map(string)
  default     = {}
}
