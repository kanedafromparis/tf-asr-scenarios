resource "random_id" "random_id" {
    keepers = {
        resource_group = azurerm_resource_group.example.name
    }
    byte_length = 8
  
}

resource "random_id" "second_random_id" {
    keepers = {
        resource_group = azurerm_resource_group.example.name
    }
    byte_length = 8
  
}

resource "azurerm_storage_account" "name" {
  name                     = "${random_id.random_id.hex}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.usedtags
}