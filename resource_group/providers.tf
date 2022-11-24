terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
      backend "azurerm" {
        resource_group_name  = "tfstate"
        storage_account_name = "tfstate30935"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }  
  
} 
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  
  provider "azurerm" {
  features {}
}


