data "terraform_remote_state" "networking" {
  backend = "azurerm"
  config = {
    storage_account_name = "tfstate30935"
    container_name       = "tfstate"
    key                  = "vnet-terraform.tfstate"
  }
}
