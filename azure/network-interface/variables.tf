variable "nic_name" {
  description = "Name of the network interface"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet to connect the NIC to"
  type        = string
}

variable "public_ip_id" {
  description = "ID of the public IP to associate with the NIC"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the NIC"
  type        = map(string)
  default     = {}
}
