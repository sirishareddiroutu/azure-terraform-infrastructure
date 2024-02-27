provider "azurerm" {
  features {
    
  }
}
resource "azurerm_resource_group" "myrg" {
    for_each = {
      "app1" = "eastus" //key-value
      "app2" = "eastus2"
      "app3" = "westus"
    }
    name = "rg-demo1-${each.key}"
    location = "${each.value}"
    //count = 3  
}

//re-demo-app0, rg-demo-app1, rg-demo-app2