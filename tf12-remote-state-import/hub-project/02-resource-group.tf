//data "azurerm_resource_group" "myrg" {
//  name = "rg-data-source"
//}
resource "azurerm_resource_group" "myrghub" {
  name = "rg-hub-test"
  location = "eastus"
  tags = {
    "owner" = "Sirisha"
    "env" = "dev"
    "owner2" = "Reshma"
  }
}

// Referencing the rg from the portal where we have created a rg in the portal
