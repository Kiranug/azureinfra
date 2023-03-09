data "azuread_client_config" "current" {}

# Create a resource group to hold the Azure Key Vault
resource "azurerm_resource_group" "key_vault_rg" {
  name     = "my-key-vault-rg"
  location = "East US"
}

# Create the Azure Key Vault
resource "azurerm_key_vault" "terraformsp" {
  name                = "my-key-vault"
  location            = "${azurerm_resource_group.key_vault_rg.location}"
  resource_group_name = "${azurerm_resource_group.key_vault_rg.name}"

  sku_name = "standard"

  access_policies {
    tenant_id = "${data.azurerm_client_config.current.tenant_id}"
    object_id = "${data.azurerm_client_config.current.object_id}"

    key_permissions = [
      "get",
      "list",
      "create",
      "delete",
    ]

    secret_permissions = [
      "get",
      "list",
      "set",
      "delete",
    ]
  }
}

# Create the Azure Service Principal
resource "azurerm_service_principal" "terraformsp" {
  name = "my-service-principal"
}

# Generate a random password for the Service Principal secret
resource "random_password" "terraformsp" {
  length = 16
}

# Store the Service Principal secret in the Azure Key Vault
resource "azurerm_key_vault_secret" "terraformsp" {
  name         = "my-service-principal-secret"
  value        = "${random_password.terraformsp.result}"
  key_vault_id = "${azurerm_key_vault.terraformsp.id}"
}
