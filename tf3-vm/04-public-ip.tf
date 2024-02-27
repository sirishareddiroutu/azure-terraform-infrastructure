resource "azurerm_public_ip" "publicip" {
    allocation_method = "Static"
    name = "my-publicip"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location  
    depends_on = [ azurerm_resource_group.myrg, azurerm_virtual_network.myvnet]
}