resource "random_pet" "prefix" {}

resource "azurerm_resource_group" "aks_rg" {
  location = var.resource_group_location
  name     = "${random_pet.prefix.id}-rg"
}
