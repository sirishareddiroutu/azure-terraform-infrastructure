
//settings block or terraform block
terraform {
  required_version = "~> 1.6.0"
  required_providers {
     azurerm = {
       source = "hashicorp/azurerm"
       version = "3.87.0"
     }     
  }
   backend "azurerm" {
    resource_group_name  = "rg-ds-importtest"
    storage_account_name = "sgstateimport"
    container_name       = "demotfstate"
    key                  = "demotfstate.tfstate"
  }
}

//providers block- multiple
provider "azurerm" {
    features {  
    }
}

provider "azurerm" {
    features {
      resource_group {
        prevent_deletion_if_contains_resources = false
      }
    } 
    alias = "provider2"
}



