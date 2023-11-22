resource "azurerm_linux_virtual_machine" "example" {
  name                = "example-machine"
  computer_name = "nginx"
  disable_password_authentication = true
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = "Standard_F2"
  admin_username      = "admin-${random_id.second_random_id.hex}"
  network_interface_ids = [
    azurerm_network_interface.nic_001_nginx.id
  ]

  admin_ssh_key {
    username   = "admin-${random_id.second_random_id.hex}"
    #public_key = file("../keypairs/mytestingazkey.pub")
    public_key = tls_private_key.mytestingkey.public_key_openssh
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

resource "tls_private_key" "mytestingkey" {
  algorithm = "RSA"
  rsa_bits = 4096
}

output "mytestingkey" {
  value = tls_private_key.mytestingkey.private_key_pem
  sensitive = true
}