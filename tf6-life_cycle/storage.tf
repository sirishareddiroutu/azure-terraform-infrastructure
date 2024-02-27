resource "azurerm_storage_account" "storage"{
  name = "backendstorageecovues"
  location = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  account_tier = "Standard"
  account_replication_type = "GRS"
  tags = {
    env = "staging"
  }
}

resource "azurerm_storage_container" "name" {
    name = "containerregistry1"
    storage_account_name = azurerm_storage_account.storage.name
    container_access_type = "blob"
}