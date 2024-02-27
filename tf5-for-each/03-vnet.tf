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
resource "azurerm_subnet" "demo_subnet" {
    for_each = var.subnet_object
    address_prefixes = each.value["address_prefixes"]
    name = "${each.value["name"]}"  
    resource_group_name = azurerm_resource_group.myrg.name
    virtual_network_name = azurerm_virtual_network.myvnet.name      
}
