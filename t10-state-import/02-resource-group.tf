//data "azurerm_resource_group" "myrg" {
//  name = "rg-data-source"
//}
resource "azurerm_resource_group" "myrg01" {
  name = "rg-ds-1"
  location = "eastus"
}

// Referencing the rg from the portal where we have created a rg in the portal
