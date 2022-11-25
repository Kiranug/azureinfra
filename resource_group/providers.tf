# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
/* terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id             = "var.ARM_SUBSCRIPTION_ID"
  client_id                   = "var.client_id"
 # client_certificate_path     = "/home/azureuser/service-principal1.pfx"
  #client_certificate_password = "var.client_certificate_password"
  client_secret               = "var.client_secret"
  tenant_id                   = "var.tenant_id"
}
*/

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "var.ARM_SUBSCRIPTION_ID"
  client_id       = "var.ARM_CLIENT_ID"
  client_secret   =  "var.ARM_CLIENT_SECRET"
  tenant_id       = "var.ARM_TENANT_ID"
}

