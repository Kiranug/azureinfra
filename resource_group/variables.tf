variable "resource_group_location" {
  default     = "eastus"
  description = "The project ID to host the cluster in"
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Default rg "
}

variable "subscription_id" {
  default     = "rg"
  description = "Default rg "
}

variable "client_id" {
  default     = "rg"
  description = "Default rg "
}

variable "certificate_path" {
  type    = pfx
  default     = ""
  description = "Default rg "
}


variable "client_pass" {
  type    = float
  default     = ""
  description = "Default rg "
}

variable "tenant_id" {
  default     = "rg"
  description = "Default rg "
}

