provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "storage" {
  name     = "storage-statefile"
  location = "West US 3"
  
}

resource "azurerm_storage_account" "example" {
  name                     = "indrastorage1211"
  resource_group_name      = azurerm_resource_group.storage.name
  location                 = azurerm_resource_group.storage.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "test"
  }
}