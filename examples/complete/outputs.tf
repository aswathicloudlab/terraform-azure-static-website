#---------------------------------------------------------------------------------------
# Output values from the resource_group module
#---------------------------------------------------------------------------------------

# Output resource group name from module resource_group_dev
output "resource_group_name" {
  value = module.resource_group_dev.resource_group_name
}

# Output resource group id from module resource_group_dev
output "resource_group_id" {
  value = module.resource_group_dev.resource_group_id
}

# Output storage account name from module storage_account_dev
output "storage_account_name" {
  value = module.storage_account_dev.storage_account_name
}

# Output storage account id from module storage_account_dev
output "storage_account_id" {
  value = module.storage_account_dev.storage_account_id
}


