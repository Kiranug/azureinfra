variable "client_certificate_path" {}
variable "client_certificate_password" {}

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

  subscription_id             = "var.ARM_SUBSCRIPTION_ID"
  client_id                   = "var.90117df8-8825-455a-82df-3eea5d6ddf36"
  client_certificate_path     = var.client_certificate_path
  client_certificate_password = var.client_certificate_password
  tenant_id                   = "var.ARM_TENANT_ID"
}
