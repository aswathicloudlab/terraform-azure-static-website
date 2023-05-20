# Azure Resource Group Creation

This Terraform sub module creates a resource group in Azure.

## Resources

The following resources are created by this code:

- **Resource Group**: A resource group is created to contain the storage account. The name of the resource group is based on the `project_name` and `environment` variables and has the format `rg-<project_name>-<environment>`. The location of the resource group is determined by the `location` variable. The resource group is also tagged with the tags specified in the `tags` variable.

## Usage

To use this code, you'll need to provide values for the following variables:

- `project_name`: The name of the project.
- `environment`: The environment (e.g., development, staging, production).
- `location`: The Azure location where the resources will be created.
- `tags`: A map of tags to apply to the resources.

Once you have provided values for these variables, you can run `terraform init` to initialize Terraform and then `terraform apply` to create the resources.

> **Note** using this sub module is optional. If you already have an existing `resource_group` you can pass the value in variable `resource_group_name` to the sub module `storage_container`
