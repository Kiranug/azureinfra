variable "resource_group_location" {
  default     = "eastus"
  description = "The project ID to host the cluster in"
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Default rg "
}
variable "resource_group_name_dev" {
  default     = "dev"
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

