
//nic is under this subnet2
resource "azurerm_network_interface" "nic" {
    //count = var.vm_count
    for_each = var.subnet_object
    name = "${var.vm_name_pfx}${each.value["name"]}-nic"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    ip_configuration {
      name = "my-ip-config"
      public_ip_address_id = azurerm_public_ip.publicip[each.value.name].id
      private_ip_address_allocation = "Dynamic"
      subnet_id = azurerm_subnet.demo_subnet[each.value.name].id
}
}