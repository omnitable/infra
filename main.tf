locals {
  common_tags = {
    application = var.application_name
    environment = var.environment
    managed_by  = "terraform"
  }
}

resource "azurerm_resource_group" "application" {
  name     = "rg-${var.application_name}-${var.environment}"
  location = var.location

  tags = local.common_tags
}
