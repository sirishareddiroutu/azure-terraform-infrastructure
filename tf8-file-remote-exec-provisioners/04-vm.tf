resource "azurerm_linux_virtual_machine" "myvm" {
  name = "vm-demo1"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  admin_username = "vmuser"
  admin_password = "Sirisha@1997"
  disable_password_authentication = false
  network_interface_ids = [azurerm_network_interface.mynic.id]
  size = "Standard_F2"
   source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
 os_disk {
   name = "mydisk"
   caching = "ReadWrite"
   storage_account_type = "Standard_LRS"
 }
 provisioner "file" {
    connection {
      type = "ssh"
      user = "vmuser"
      password = "Sirisha@1997"
      host = azurerm_public_ip.mypublicip.ip_address
    }
    source = "bash.sh"
    destination = "/home/vmuser/bash.sh"
 }
 provisioner "local-exec" {
    command = "echo ${azurerm_public_ip.mypublicip.ip_address} >> output.txt"
 }
 provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "vmuser"
      password = "Sirisha@1997"
      host = azurerm_public_ip.mypublicip.ip_address
    }
    inline = [
    "ls -a",
    "mkdir createdusingtf",
    "sudo chmod +x bash.sh",
    "sudo ./bash.sh"
    ]   
 }
 
}