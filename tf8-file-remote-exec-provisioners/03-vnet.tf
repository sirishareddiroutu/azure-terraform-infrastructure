resource "azurerm_virtual_network" "myvnet" {
  name = "vnet-demo1"
  location = "eastus"
  resource_group_name = azurerm_resource_group.myrg.name
  address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "mysubnet" {
  name = "${azurerm_virtual_network.myvnet.name}-subnet1"
  address_prefixes = [ "10.0.1.0/24" ]
  virtual_network_name = azurerm_virtual_network.myvnet.name
  resource_group_name = azurerm_resource_group.myrg.name
}