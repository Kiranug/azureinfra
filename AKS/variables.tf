# Define Input Variables
# 1. Azure Location (CentralUS)
# 2. Azure Resource Group Name 
# 3. Azure AKS Environment Name (Dev, QA, Prod)

# Azure Location
variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "Central US"
}
variable "resource_group_location" {
  type = string
  description = "This variable defines the Resource Group"
  default = "East US"
}
# Azure Resresource_group_locationource Group Name
variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "terraform-aks"
}

# Azure AKS Environment Name
variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  #default = "dev2"
}


# AKS Input Variables

# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  default = "/opt/aksdev.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
}

# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"  
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type = string
  default = "P@ssw0rd1234"
  description = "This variable defines the Windows admin password k8s Worker nodes"  
}


variable "aks_cluster_kubernetes_version" {
  type    = string
  default = "dev2"
  description = "Default rg "
}

variable "aks_cluster_name" {
  type    = string
  default = "dev2"
  description = "Default rg "
}

variable "aks_cluster_id" {
  type    = string
  default = "dev2"
  description = "Default rg "
}

variable "ARM_SUBSCRIPTION_ID" {
  type    = string
  default     = "rg"
  description = "Default rg "
}

variable "ARM_CLIENT_ID" {
  type    = string
  default     = "rg"
  description = "Default rg "
}


variable "ARM_CLIENT_SECRET" {
  type    = string
  default     = ""
  description = "Default rg "
}

variable "ARM_TENANT_ID" {
  type    = string
  default     = "rg"
  description = "Default rg "
}
