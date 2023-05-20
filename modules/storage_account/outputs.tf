#---------------------------------------------------------------------------------------
# Output values from the storage_account module
#---------------------------------------------------------------------------------------
# Out put the storrage account name from "azurerm_storage_account" "sa_static_site"
output "storage_account_name" {
  value = azurerm_storage_account.sa_static_site.name
}

# Output the storage account id from "azurerm_storage_account" "sa_static_site"
output "storage_account_id" {
  value = azurerm_storage_account.sa_static_site.id
}
