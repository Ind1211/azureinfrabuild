resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
}

variable "name" {}
variable "location" {}

output "name" {
  value = azurerm_resource_group.rg.name
}