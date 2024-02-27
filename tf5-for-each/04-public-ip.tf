resource "azurerm_public_ip" "publicip" {
    allocation_method = "Static"
    //count = var.vm_count
    for_each = var.subnet_object
    name = "${var.vm_name_pfx}${each.value.name}-publicip"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location  
    depends_on = [ azurerm_resource_group.myrg, azurerm_virtual_network.myvnet]
}