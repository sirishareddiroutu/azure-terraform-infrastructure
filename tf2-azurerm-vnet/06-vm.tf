resource "azurerm_linux_virtual_machine" "myvm" {
  resource_group_name = azurerm_resource_group.myrg.name
  name = "vm-demo3"
  location = azurerm_resource_group.myrg.location
  network_interface_ids = azurerm_network_interface.nic.id
  #zone = zone1
  size = "Standard_DS2_v3"

  source_image_reference {
    offer = "UbuntuServer"
    publisher = "Canonical"
    sku = "22.04 LTS"
    version = "latest"
 }
 os_disk {
   name = "mydisk"
   caching = "ReadWrite"
   storage_account_type = "Standard_LRS"
 }
 computer_name = "vm-myvm"
 admin_username = "vm-user"
 admin_password = "Sirisha@1997"
}