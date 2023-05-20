#---------------------------------------------------------------------------------------
# Create a static website in Azure Storage                                                           
#   - Create a storage account
#   - Create a container in the storage account
#   - Create a static website in the storage account
#   - Upload a index.html & 404.html to the container                  
#---------------------------------------------------------------------------------------

# Create storage account
resource "azurerm_storage_account" "sa_static_site" {
  name                      = "sa${var.project_name}${var.environment}"
  resource_group_name       = var.resource_group_name
  location                  = var.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  account_kind              = var.account_kind
  enable_https_traffic_only = var.enable_https_traffic_only
  min_tls_version           = var.min_tls_version
  static_website {
    index_document     = "index.html"
    error_404_document = "404.html"
  }
  tags = var.tags
}

# Upload index.html & 404.html to the $web container
# html files are stored in the html_files directory
resource "azurerm_storage_blob" "site_html_files" {
  for_each = fileset(var.html_files_dir, "*.html")
  name = each.value
  storage_account_name = azurerm_storage_account.sa_static_site.name
  storage_container_name = "$web"
  type = "Block"
  source = "${var.html_files_dir}/${each.value}"
  content_type = "text/html"
}
