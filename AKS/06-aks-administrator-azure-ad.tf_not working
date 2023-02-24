# Create Azure AD Group in Active Directory for AKS Admins
#resource "azuread_group" "aks_administrators" {
  #name        = "${azurerm_resource_group.aks_rg.name}-${var.environment}-administrators"
#  display_name   = "${azurerm_resource_group.aks_rg.name}-${var.environment}-administrators"
 # description = "Azure AKS Kubernetes administrators for the ${azurerm_resource_group.aks_rg.name}-${var.environment} cluster."
 # security_enabled = true
#}

data "azuread_client_config" "current" {}

resource "azuread_group" "example" {
  display_name     = "${azurerm_resource_group.aks_rg.name}-${var.environment}-administrators"
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}
