terraform {
  required_providers {
     azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 3.88.0"
     }
    
  }
  backend "azurerm" {
    storage_account_name = "backendstorageecovues"
    resource_group_name = "rg-HR-staging-westus-01"
    container_name = "containerregistry1"
    key = "terraform.tfstate"
  }
}
