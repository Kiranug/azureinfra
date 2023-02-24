resource "azurerm_kubernetes_cluster" "default" {
  name                = "${azurerm_resource_group.aks_rg.name}"
  location            = "${azurerm_resource_group.aks_rg.location}"
  resource_group_name = "${azurerm_resource_group.aks_rg.name}"
  dns_prefix          = "${random_pet.prefix.id}-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_B2s"
    os_disk_size_gb = 30
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "Demo"
  }
}
