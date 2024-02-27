
//nic is under this subnet2
resource "azurerm_network_interface" "nic" {
    name = "my-nic"
    resource_group_name = azurerm_resource_group.myrg01.name
    location = azurerm_resource_group.myrg01.location
    ip_configuration {
      name = "my-ip-config"
      public_ip_address_id = azurerm_public_ip.publicip.id
      private_ip_address_allocation = "Dynamic"
      subnet_id = azurerm_subnet.mysnet.id
    }  
}