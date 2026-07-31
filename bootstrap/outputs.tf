output "resource_group_name" {
  description = "Resource group containing the Terraform backend"
  value       = azurerm_resource_group.tfstate.name
}

output "storage_account_name" {
  description = "Storage account used by the Terraform backend"
  value       = azurerm_storage_account.tfstate.name
}

output "state_container_name" {
  description = "Container used to store Terraform states"
  value       = azurerm_storage_container.tfstate.name
}
