resource "azurerm_public_ip" "example" {
  name                = var.mypublicipname
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  # they are pretty much the same then #location            = var.location
  allocation_method   = "Dynamic" #"Static"

  tags = var.usedtags
}
