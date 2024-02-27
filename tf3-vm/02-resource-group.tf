resource "azurerm_resource_group" "myrg" {
    name = "rg-demo1"
    location = "eastus"
    timeouts {
      create = "15m"
    }
    tags = {
        environment = "staging"
        owner = "Sirisha"
    }      
}

  
