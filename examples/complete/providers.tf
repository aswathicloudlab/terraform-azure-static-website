#---------------------------------------------------------------------------------------
# Define HCP Azure provider block                                                      
#---------------------------------------------------------------------------------------

# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.52.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}