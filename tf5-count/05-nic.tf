
//nic is under this subnet2
resource "azurerm_network_interface" "nic" {
    count = var.vm_count
    name = "${var.vm_name_pfx}${count.index}-nic"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    ip_configuration {
      name = "my-ip-config"
      public_ip_address_id = azurerm_public_ip.publicip[count.index].id
      private_ip_address_allocation = "Dynamic"
      subnet_id = azurerm_subnet.subnet2.id
    }  
}