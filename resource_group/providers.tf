# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
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

  subscription_id             = "5db014fe-1501-4706-a3a2-e0fb1f0ecb10"
  client_id                   = "90117df8-8825-455a-82df-3eea5d6ddf36"
  client_certificate_path     = "/home/azureuser/service-principal1.pfx"
  client_certificate_password = "Aws@123456!"
  tenant_id                   = "4514e9f9-4390-4c50-aa07-78ca05c287b6"
}
