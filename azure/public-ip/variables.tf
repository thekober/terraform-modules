variable "pip_name" {
  description = "Name of the public IP"
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

variable "allocation_method" {
  description = "IP address allocation method"
  type        = string
  default     = "Dynamic"
}

variable "tags" {
  description = "Tags to apply to the public IP"
  type        = map(string)
  default     = {}
}
