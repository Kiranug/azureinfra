# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  
  # Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "tfstate"
    storage_account_name  = "tfstate30935"
    container_name        = "tfstate"
    key                   = "vnet-terraform.tfstate"
  } 
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
