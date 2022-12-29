# Bastion Host Name
variable "bastionvm_name" {
  description = "bastion host Name"
  type = string
}

variable "bastion_subnet_name" {
  description = "Virtual Network Bastion Subnet Name"
  type = string
  default = "bastionsubnet"
}
