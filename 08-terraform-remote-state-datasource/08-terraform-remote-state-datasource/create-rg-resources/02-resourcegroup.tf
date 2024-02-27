resource "azurerm_resource_group" "myrg" { 
/*   for_each = {
    "app1" = "eastus"
    "app2" = "centralus"
    "app3" = "westus"
  } */
  #name = "rg-demo-${each.key}-${random_string.myrandom.result}"
  name = "rg-demo-${random_string.myrandom.result}"
  location = "eastus2"
}