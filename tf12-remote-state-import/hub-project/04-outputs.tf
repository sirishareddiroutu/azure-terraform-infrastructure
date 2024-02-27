output "hubrgname" {
    value = azurerm_resource_group.myrghub.name
}
output "hubvnetid" {
  value = azurerm_virtual_network.myvnet.id
}
output "hubsubnetid" {
  value = azurerm_subnet.mysnet.id
}