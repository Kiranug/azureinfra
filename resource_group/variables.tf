variable "resource_group_location" {
  default     = "eastus"
  description = "The project ID to host the cluster in"
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Default rg "
}

variable "subscription_id" {
  type    = string
  default     = "rg"
  description = "Default rg "
}

variable "client_id" {
  type    = string
  default     = "rg"
  description = "Default rg "
}


variable "client_secret" {
  type    = string
  default     = ""
  description = "Default rg "
}

variable "tenant_id" {
  type    = string
  default     = "rg"
  description = "Default rg "
}

