output "resource_group_name" {
  description = "Resource Group name"
  # Argument Reference
  value = azurerm_resource_group.myhubrg.name  
}

output "resource_group_location" {
  description = "Resource Group Location"
  # Argument Reference
  value = azurerm_resource_group.myhubrg.location  
}

output "virtual_network_name" {
  description = "Virutal Network Name"
  value = azurerm_virtual_network.myvnet.name 
  #sensitive = true
}

output "subnet_name" {
  description = "Subnet Name"
  value = azurerm_subnet.mysubnet.name
}

output "subnet_id" {
  description = "Subnet Name"
  value = azurerm_subnet.mysubnet.id
}

