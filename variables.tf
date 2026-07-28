variable "application_name" {
  description = "Application name"
  type        = string
}

variable "environment" {
  description = "Application environment"
  type        = string

  validation {
    condition     = contains(["dev", "homolog", "prod"], var.environment)
    error_message = "Environment must be one of dev | homolog | prod"
  }
}

variable "location" {
  description = "Azure datacenter location"
  type        = string
}
