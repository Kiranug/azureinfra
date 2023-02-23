data "terraform_remote_state" "networking" {
  backend = "azurerm"
  config = {
    resource_group_name   = "tfstate"
    storage_account_name = "tfstate30935"
    container_name       = "tfstate"
    key                  = "vnet-terraform.tfstate"
  }
}