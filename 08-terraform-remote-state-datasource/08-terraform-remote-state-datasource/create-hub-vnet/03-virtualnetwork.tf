# Create Virtual Network
resource "azurerm_virtual_network" "myvnet" {
  name                = "hubvnet-1"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.myhubrg.location
  resource_group_name = azurerm_resource_group.myhubrg.name
}

# Create Subnet
resource "azurerm_subnet" "mysubnet" {
  name                 = "mysubnet-1"
  resource_group_name  = azurerm_resource_group.myhubrg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

