resource "azurerm_linux_virtual_machine" "myvm" {
 // count = var.vm_count
  for_each = azurerm_subnet.demo_subnet
  name = "${var.vm_name_pfx}-${each.value.name}"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  network_interface_ids = [ azurerm_network_interface.nic[each.value.name].id]
  #zone = zone1
  size = "Standard_F2"
  
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
 os_disk {
   //name = "mydisk"
   caching = "ReadWrite"
   storage_account_type = "Standard_LRS"
 }
 computer_name = "vm-myvm"
 admin_username = "vm-user"
 admin_password = "Sirisha@1997"
 admin_ssh_key {
  username = "vm-user"
   public_key = file("${path.module}/ssh-keys/myvm.pub")
 }
 custom_data = filebase64("${path.module}/app-script/install_apache.sh")

//path of the current module- path.module
//passing file as the value
 //disable_password_authentication = false
 lifecycle {
     
 }
}