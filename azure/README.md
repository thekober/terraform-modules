# Azure Terraform Modules

This repository contains reusable Terraform modules for Azure resources.

## Available Modules

- [Resource Group](./modules/resource-group)
- [Virtual Machine](./modules/virtual-machine)
- [Network Interface](./modules/network-interface)
- [Public IP](./modules/public-ip)

## Usage

To use these modules in your Terraform configuration, add the following to your `main.tf` file:

```hcl
module "resource_group" {
  source = "github.com/your-username/terraform-azure-modules//modules/resource-group"

  resource_group_name = "my-resource-group"
  location            = "eastus"
}

module "public_ip" {
  source = "github.com/your-username/terraform-azure-modules//modules/public-ip"

  pip_name             = "my-public-ip"
  resource_group_name  = module.resource_group.resource_group_name
  location             = module.resource_group.resource_group_location
}

module "network_interface" {
  source = "github.com/your-username/terraform-azure-modules//modules/network-interface"

  nic_name             = "my-nic"
  location             = module.resource_group.resource_group_location
  resource_group_name  = module.resource_group.resource_group_name
  subnet_id            = "your-subnet-id"
  public_ip_id         = module.public_ip.public_ip_id
}

module "virtual_machine" {
  source = "github.com/your-username/terraform-azure-modules//modules/virtual-machine"

  vm_name              = "my-vm"
  resource_group_name  = module.resource_group.resource_group_name
  location             = module.resource_group.resource_group_location
  network_interface_id = module.network_interface.nic_id
  admin_username       = "adminuser"
  ssh_public_key_path  = "~/.ssh/id_rsa.pub"
}

module "storage_account" {
  source = "github.com/your-username/terraform-azure-modules//modules/storage-account"

  storage_account_name = "mystorageaccount"
  resource_group_name  = module.resource_group.resource_group_name
  location             = module.resource_group.resource_group_location
}

module "storage_container" {
  source = "github.com/your-username/terraform-azure-modules//modules/storage-container"

  container_name       = "mycontainer"
  storage_account_name = module.storage_account.storage_account_name
}
