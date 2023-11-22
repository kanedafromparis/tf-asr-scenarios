
# Create a virtual network within the resource group
resource "azurerm_subnet" "subnet001" {
  name                 = "example-subnet-01"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/29"] #Number of Usable Hosts:	6

}


resource "azurerm_subnet" "subnet002" {
  name                 = "example-subnet-02"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/27"] #Number of Usable Hosts:	30
}
