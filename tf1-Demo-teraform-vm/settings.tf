terraform {
  required_version = "1.6.6"
  required_providers {
    azurerm = {
        version = "~>3.62.0"
        source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
    features {
      
    }
  
}

resource "azurerm_resource_group" "myrg" {
    location ="East US"
    name = "rg-mytest"
}