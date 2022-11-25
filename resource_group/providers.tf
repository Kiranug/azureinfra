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

  subscription_id             = "var.subscription_id"
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

  subscription_id = "5db014fe-1501-4706-a3a2-e0fb1f0ecb10"
  client_id       = "7e0018d4-7d2e-45ae-929c-507747f4e8c1"
  client_secret   = "Bfn8Q~t4NdVTNwbCmzzxPh~olXgvZHDML-sbWbwh"
  tenant_id       = "4514e9f9-4390-4c50-aa07-78ca05c287b6"
}
