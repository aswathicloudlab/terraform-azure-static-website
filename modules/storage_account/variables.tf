#---------------------------------------------------------------------------------------
# Define the variables block                                                                       
#---------------------------------------------------------------------------------------

# Define a variable for project-name
variable "project_name" {
  type        = string
  description = "The name of the project"
}

# Define a variable for environment name
variable "environment" {
  type        = string
  description = "The name of the environment" # dev, test, prod
}

# Define a variable for location
variable "location" {
  type        = string
  description = "The location of the resource" # eastus, westus, etc.
}

# # Define a variable for resource group name
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

# Define a variable for tags
variable "tags" {
  type        = map(any)
  description = "The tags for the resource"
}

# Define a variable for account_tier
variable "account_tier" {
  type        = string
  description = "The storage account tier"
}

# Define a variable for account_replication_type
variable "account_replication_type" {
  type        = string
  description = "The storage account replication type"
}

# Define a variable for enable_https_traffic_only
variable "enable_https_traffic_only" {
  type        = bool
  description = "The storage account enable https traffic only"
}

# Define a variable for min_tls_version
variable "min_tls_version" {
  type        = string
  description = "The storage account minimum TLS version"
}

# Define a variable for account_kind
variable "account_kind" {
  type        = string
  description = "The storage account kind"
}

# Define a variable for html_files_dir
variable "html_files_dir" {
  type        = string
  description = "The path to the directory containing the html files"
}