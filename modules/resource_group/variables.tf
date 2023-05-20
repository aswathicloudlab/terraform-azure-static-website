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
# variable "resource_group_name" {
#   type        = string
#   description = "The name of the resource group"
# }

# Define a variable for tags
variable "tags" {
  type        = map
  description = "The tags for the resource"
}

