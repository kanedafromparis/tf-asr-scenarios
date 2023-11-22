resource "azurerm_network_interface" "nic_001_nginx" {
  name                = var.nic_001_nginx_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tags                = var.usedtags
  ip_configuration {
    name                          = "internal_001_nginx"
    subnet_id                     = azurerm_subnet.subnet001.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.example.id
  }
}

resource "azurerm_subnet_network_security_group_association" "nic_001_nginx_sgass" {
  subnet_id                 = azurerm_subnet.subnet001.id
  network_security_group_id = azurerm_network_security_group.example.id
}
