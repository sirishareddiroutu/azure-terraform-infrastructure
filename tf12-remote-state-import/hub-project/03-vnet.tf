# # /*resource "azurerm_virtual_network" "myvnet" {
# # location = data.azurerm_resource_group.myrg.location
# # name = "vnet-demo2"
# # resource_group_name = data.azurerm_resource_group.myrg.name
# # address_space = ["10.0.0.0/16","192.168.0.0/16"]
# # /*subnet {
# #     address_prefix = "10.0.1.0/24"
# #     name = "subnet1"
# # }*/
# # }
# # resource "azurerm_subnet" "subnet2" {
# #     address_prefixes = ["10.0.11.0/24"]
# #     name = "my-subnet2"
# #     resource_group_name = data.azurerm_resource_group.myrg.name
# #     virtual_network_name = azurerm_virtual_network.myvnet.name      
# # }
# # resource "azurerm_subnet" "subnet3" {
# #     address_prefixes = ["10.0.22.0/24"]
# #     name = "my-subnet3"
# #     resource_group_name = data.azurerm_resource_group.myrg.name
# #     virtual_network_name = azurerm_virtual_network.myvnet.name      
# # }
# # 

# data "azurerm_virtual_network" "mynewvnet" {
#   name = "vnet-demo2"
#   resource_group_name = "rg-data-source"

# }

# data "azurerm_subnet" "mysubnet" {
#   name = "my-subnet2"
#   virtual_network_name = data.azurerm_virtual_network.mynewvnet.name
#   resource_group_name = data.azurerm_virtual_network.mynewvnet.resource_group_name
# }

resource "azurerm_virtual_network" "myvnet" {
  resource_group_name = azurerm_resource_group.myrghub.name
  name = "myhubvnet-01"
  location = azurerm_resource_group.myrghub.location
  address_space       = ["10.0.0.0/16"]
  # subnet {
  #   name           = "default"
  #   address_prefix = "10.0.0.0/24"
  # }
}

resource "azurerm_subnet" "mysnet" {
  name = "default"
  address_prefixes = ["10.0.0.0/24"]
  resource_group_name = azurerm_resource_group.myrghub.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
}

#terraform import azurerm_virtual_network.myvnet /subscriptions/4c425dfb-ebe3-4217-aa43-5d711f09babf/resourceGroups/mygroup1/providers/Microsoft.Network/virtualNetworks/myvnet1


