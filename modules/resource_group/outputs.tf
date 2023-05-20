#---------------------------------------------------------------------------------------
# Output values from the resource_group module
#---------------------------------------------------------------------------------------

# Output the resource group name "azurerm_resource_group" "rg_static_site"
output "resource_group_name" {
  value = azurerm_resource_group.rg_static_site.name
}

# Output the resource group id "azurerm_resource_group" "rg_static_site"
output "resource_group_id" {
  value = azurerm_resource_group.rg_static_site.id
}
