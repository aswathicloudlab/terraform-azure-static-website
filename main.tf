#---------------------------------------------------------------------------------------
# Create a static website in Azure Storage                                                           
#   - Create a resource group for the storage account
#   - Create a storage account
#   - Create a container in the storage account
#   - Create a static website in the storage account
#   - Upload html files to the container (index.html & 404.html)                  
#---------------------------------------------------------------------------------------

# Create resource group using module ./modules/resource_group
module "resource_group_dev" {
  source       = "./modules/resource_group"
  project_name = local.project_name
  environment  = local.environment
  location     = local.location
  tags         = local.tags
}

# Create storage account using module ./modules/storage_account
module "storage_account_dev" {
  source                    = "./modules/storage_account"
  project_name              = local.project_name
  environment               = local.environment
  location                  = local.location
  resource_group_name       = module.resource_group_dev.resource_group_name
  tags                      = local.tags
  account_tier              = local.account_tier
  account_replication_type  = local.account_replication_type
  account_kind              = local.account_kind
  enable_https_traffic_only = local.enable_https_traffic_only
  min_tls_version           = local.min_tls_version
  html_files_dir            = local.html_files_dir
}