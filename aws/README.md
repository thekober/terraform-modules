# AWS Terraform Modules

This repository contains reusable Terraform modules for AWS resources.

## Available Modules

- [S3](./s3/README.md)

## Usage

To use a module in your Terraform configuration, reference it using the following syntax:

```hcl
module "example" {
  source = "github.com/your-username/terraform-aws-modules//s3?ref=v1.0.0"
  
  # Module inputs
}
