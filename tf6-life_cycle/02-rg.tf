resource "azurerm_resource_group" "myrg" {
  name = "rg-${var.business_unit}-${var.env}-${var.location}-01"//rg-bu-env-location-01
  location = "eastus"
  tags = var.custom_tags
    
}
resource "azurerm_virtual_network" "myvnet" {
    name = "vnet-${var.env}-01"
    resource_group_name = azurerm_resource_group.myrg.name
    address_space = var.address_space
    location = "eastus2"
   /* lifecycle {
      replace_triggered_by = [azurerm_virtual_network.myvnet.resource_group_name]
    }*/
    tags = var.custom_tags
    }
  

