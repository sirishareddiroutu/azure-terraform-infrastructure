resource "azurerm_public_ip" "publicip" {
    allocation_method = "Static"
    count = var.vm_count
    name = "${var.vm_name_pfx}${count.index}publicip"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location  
    depends_on = [ azurerm_resource_group.myrg, azurerm_virtual_network.myvnet]
}