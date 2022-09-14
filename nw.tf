resource "azurerm_virtual_network" "vnet-main" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = var.rgname
  address_space       = var.address_space
  #dns_servers = ["10.0.0.4"]
}

resource "azurerm_subnet" "snet-web" {
  name                 = var.snetname
  resource_group_name  = var.rgname
  virtual_network_name = var.vnetname
  address_prefixes     = var.address_prefixes
}

resource "azurerm_public_ip" "web-vm-pip" {
  name                = var.vm-pip-name
  resource_group_name = var.rgname
  allocation_method   = var.allocation_method
  location            = var.location
}
