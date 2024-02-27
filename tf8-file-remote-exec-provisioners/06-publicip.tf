resource "azurerm_public_ip" "mypublicip" {
  name = "${azurerm_resource_group.myrg.name}-publicip"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  allocation_method = "Static"
}