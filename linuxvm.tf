resource "azurerm_resource_group" "rg-rk-terraform" {
  name     = var.rgname
  location = var.location
}


resource "azurerm_linux_virtual_machine" "webvm" {
  name                = var.vmname
  resource_group_name = var.rgname
  location            = var.location
  size                = var.vmsize
  admin_username      = var.vmusername
  network_interface_ids = [
    azurerm_network_interface.webvm.id,
  ]

  admin_ssh_key {
    username   = var.vmusername
    public_key = file("./rk_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.os_version
  }
}

resource "azurerm_network_interface" "webvm" {
  name                = var.nicname
  location            = azurerm_resource_group.rg-rk-terraform.location
  resource_group_name = azurerm_resource_group.rg-rk-terraform.name

  ip_configuration {
    name                          = "local"
    subnet_id                     = azurerm_subnet.snet-web.id
    public_ip_address_id          = azurerm_public_ip.web-vm-pip.id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}