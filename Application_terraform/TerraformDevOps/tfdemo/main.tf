terraform {
  required_version = "> 1.5"
  required_providers {
    azurerm = {
     source = "hashicorp/azurerm"
     version = "> 3.87"
    }
  }
}
provider "azurerm" {
  features {
   
  }
}

resource "azurerm_resource_group" "myrg" {
  name     = "${var.resource_group_name}-${var.env_name}"
  location = var.resource_group_location
  tags = {
    environment = var.env_name
    owner = var.owner_name
  }
}

resource "azurerm_virtual_network" "myvnet" {
  address_space       = var.vnet_address_space
  location            = var.resource_group_location
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.myrg.name
  tags = {
    environment = var.env_name
    owner = var.owner_name
  }
}

# resource "azurerm_subnet" "mysubnets" {
#   count                = length(var.subnet_address_prefixes)
#   name                 = lookup(element(var.subnet_address_prefixes, count.index), "name")
#   address_prefixes     = lookup(element(var.subnet_address_prefixes, count.index), "address_prefixes")
#   virtual_network_name = azurerm_virtual_network.myvnet.name
#   resource_group_name  = azurerm_resource_group.myrg.name
# }

# resource "azurerm_network_security_group" "mynsgs" {
#   count               = length(var.subnet_address_prefixes)
#   name                = "nsg-${lookup(element(var.subnet_address_prefixes, count.index), "name")}"
#   location            = var.resource_group_location
#   resource_group_name = azurerm_resource_group.myrg.name
#   dynamic "security_rule" {
#     for_each = local.nsgs[count.index].security_rule
#     content {
#       name                       = security_rule.value.name
#       priority                   = security_rule.value.priority
#       direction                  = security_rule.value.direction
#       access                     = security_rule.value.access
#       protocol                   = security_rule.value.protocol
#       source_port_range          = security_rule.value.source_port_range
#       destination_port_range     = security_rule.value.destination_port_range
#       source_address_prefix      = security_rule.value.source_address_prefix
#       destination_address_prefix = security_rule.value.destination_address_prefix
#     }
#   }
#   tags = {
#     environment = var.env_name
#     owner = var.owner_name
#   }
# }

# resource "azurerm_subnet_network_security_group_association" "mynsgassociation" {
#   count                     = length(var.subnet_address_prefixes)
#   subnet_id                 = element(azurerm_subnet.mysubnets.*.id, count.index)
#   network_security_group_id = element(azurerm_network_security_group.mynsgs.*.id, count.index)
# }

# # resource "azurerm_linux_virtual_machine" "myvms" {
# #   for_each              = var.vm_map
# #   name                  = each.value.name
# #   computer_name         = each.value.name
# #   resource_group_name   = azurerm_resource_group.myrg.name
# #   location              = azurerm_resource_group.myrg.location
# #   size                  = each.value.size
# #   admin_username        = "azureuser"
# #   admin_password        = each.value.admin_password
# #   network_interface_ids = []

# #   os_disk {
# #     caching              = "ReadWrite"
# #     storage_account_type = "Standard_LRS"
# #   }
# #   source_image_reference {
# #     publisher = "Canonical"
# #     offer     = "0001-com-ubuntu-server-jammy"
# #     sku       = "22_04-lts"
# #     version   = "latest"
# #   }

# # }