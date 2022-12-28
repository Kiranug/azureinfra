resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = random_pet.rg_name.id
}

resource "random_pet" "rg_name1" {
  prefix = var.resource_group_name_dev
}

resource "azurerm_resource_group" "rg1" {
  location = var.resource_group_location
  name     = random_pet.rg_name1.id
}

resource "azurerm_resource_group" "southcenter" {
  location = var.resource_group_location
  name     = random_pet.rg_name1.id
}


