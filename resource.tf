resource "azurerm_resource_group" "example" {
  name     = "Example-resources"
  location = "East US"
}

resource "azurerm_storage_account" "storage" {
  name                     = "mystorageacct2409"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}