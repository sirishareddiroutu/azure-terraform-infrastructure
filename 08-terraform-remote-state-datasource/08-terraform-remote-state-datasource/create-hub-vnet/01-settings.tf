terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 3.60"
    }
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-statefile"
    storage_account_name = "ststatefile001"
    container_name = "hubstatefile"
    key = "tfstatehubvnet.tf"
  }
}

provider "azurerm" {
  features {
    
  }
}

resource "random_string" "myrandom" {
  length = 5 
  upper = false
  special = false
  numeric = false
}