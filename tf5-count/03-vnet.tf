resource "azurerm_virtual_network" "myvnet" {
location = azurerm_resource_group.myrg.location
name = "vnet-demo2"
resource_group_name = azurerm_resource_group.myrg.name
address_space = ["10.0.0.0/16","192.168.0.0/16"]
/*subnet {
    address_prefix = "10.0.1.0/24"
    name = "subnet1"
}*/
}
resource "azurerm_subnet" "subnet2" {
    address_prefixes = ["10.0.11.0/24"]
    name = "my-subnet2"
    resource_group_name = azurerm_resource_group.myrg.name
    virtual_network_name = azurerm_virtual_network.myvnet.name      
}
resource "azurerm_subnet" "subnet3" {
    address_prefixes = ["10.0.22.0/24"]
    name = "my-subnet3"
    resource_group_name = azurerm_resource_group.myrg.name
    virtual_network_name = azurerm_virtual_network.myvnet.name      
}
