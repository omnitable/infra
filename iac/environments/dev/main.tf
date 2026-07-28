resource "azurerm_resource_group" "dev" {
  name     = "rg-${var.application_name}-${var.environment}"
  location = var.location

  tags = {
    application = var.application_name
    environment = var.environment
    managed_by  = "terraform"
  }
}
