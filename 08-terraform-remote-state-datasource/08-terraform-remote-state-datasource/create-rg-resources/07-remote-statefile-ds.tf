data "terraform_remote_state" "hubremotestate" {
    backend = "azurerm"
    config = {
        resource_group_name   = "rg-statefile"
        storage_account_name  = "ststatefile001"
        container_name        = "hubstatefile"
        key                   = "tfstatehubvnet.tf"
    }  
}