resource "null_resource" "mynullresource" {
    depends_on = [ azurerm_linux_virtual_machine.myvm ]
  connection {
      host = azurerm_public_ip.publicip.ip_address
      type = "ssh"
      user = "vm-user"
      private_key = file("${path.module}/sshkeys/newssh.pem")
    }
  provisioner "file" {
    destination = "/tmp/hello.html"
    source= "appscript/hello.html"
   
  }
}
  resource "null_resource" "mynullresource1" {
    depends_on = [ azurerm_linux_virtual_machine.myvm, null_resource.mynullresource ]
  connection {
      host = azurerm_public_ip.publicip.ip_address
      type = "ssh"
      user = "vm-user"
      private_key = file("${path.module}/sshkeys/newssh.pem")
    }
  provisioner "remote-exec" {
    inline = [     
    "sudo chmod +x /tmp/hello.html",
    "sudo cp /tmp/hello.html /var/www/html/"
     ]
  }
}
