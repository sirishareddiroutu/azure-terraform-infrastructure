resource "azurerm_linux_virtual_machine" "myvm" {
 // count = var.vm_count
  name = "${var.vm_name_pfx}-vm"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  network_interface_ids = [ azurerm_network_interface.nic.id]
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
// admin_password = "Sirisha@1997"
 admin_ssh_key {
  username = "vm-user"
   public_key = file("${path.module}/sshkeys/newssh.pub")
 }
 custom_data = filebase64("${path.module}/appscript/install_apache.sh")

//path of the current module- path.module
//passing file as the value
 //disable_password_authentication = false
 lifecycle {
     
 }

}