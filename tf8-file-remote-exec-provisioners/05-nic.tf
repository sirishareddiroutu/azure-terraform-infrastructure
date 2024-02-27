resource "azurerm_network_interface" "mynic" {
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  name = "nic-myvm"
  ip_configuration {
    name = "my-ip-config"
    public_ip_address_id = azurerm_public_ip.mypublicip.id
    subnet_id = azurerm_subnet.mysubnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

