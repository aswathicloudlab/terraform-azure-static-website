# Change values as per your environment
locals {
  project_name              = "cloudlab"
  environment               = "dev"
  location                  = "australiaeast"
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  account_kind              = "StorageV2"
  enable_https_traffic_only = true
  min_tls_version           = "TLS1_2"
  html_files_dir            = "html_files"
  tags = {
    owner        = "aswathi shiju"
    environment  = "dev"
    project_name = "aswathi-cloudlab-site"
    created_by   = "terraform"
  }
}