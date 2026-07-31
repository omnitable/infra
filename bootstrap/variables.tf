variable "subscription_id" {
  description = "Azure subscription where the Terraform backend will be created"
  type        = string
}

variable "application_name" {
  description = "Application name"
  type        = string
}

variable "location" {
  description = "Azure region for the Terraform backend resources"
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique name for the Terraform state storage account"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Storage account name must contain 3 to 24 lowercase letters or numbers."
  }
}

variable "state_container_name" {
  description = "Blob container used to store Terraform state files"
  type        = string
  default     = "tfstate"
}
