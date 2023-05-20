#---------------------------------------------------------------------------------------
# Create a resource group in Azure                                                       
#   - Create a resource group for the storage account                 
#---------------------------------------------------------------------------------------

# Create resource group
resource "azurerm_resource_group" "rg_static_site" {
  name     = "rg-${var.project_name}-${var.environment}"
  location = var.location
  tags     = var.tags
}
