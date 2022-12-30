resource "azurerm_resource_group" "example" {
  name     = "bastion-resources"
  location = "West Europe"
}
resource "azurerm_network_interface" "example" {
  name                = "bastion-nic"
  location            = data.terraform_remote_state.networking.outputs.Resource_group_location
  resource_group_name = data.terraform_remote_state.networking.outputs.Resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.terraform_remote_state.networking.outputs.bastion_subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "example" {
  name                = var.bastionvm_name
  resource_group_name = data.terraform_remote_state.networking.outputs.Resource_group_name
  location            = data.terraform_remote_state.networking.outputs.Resource_group_location
  size                = "Standard_F1"
  network_interface_ids = [
    azurerm_network_interface.example.id
  ]
  
  os_profile {
  computer_name  = var.bastionvm_name
  admin_username = "adminuser"
  admin_password = "Swami@123!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}
