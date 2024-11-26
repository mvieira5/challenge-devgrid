provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "vnetchallenge" {
  name                = var.vnet-name
  location            = var.region
  resource_group_name = var.rg-vnet-name
  address_space       = [var.vnet-address-space]
}

resource "azurerm_subnet" "snetchallenge" {
  name                 = var.snet-name
  resource_group_name  = var.rg-vnet-name
  virtual_network_name = azurerm_virtual_network.vnetchallenge.name
  address_prefixes     = [var.snet-address-space]

  depends_on = [ azurerm_virtual_network.vnetchallenge ]
}

resource "azurerm_network_security_group" "nsgchallenge" {
  name                = var.nsg-name
  location            = var.region
  resource_group_name = var.rg-vnet-name

  security_rule {
    name                       = "SSH"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "nsgachallenge" {
  subnet_id                 = azurerm_subnet.snetchallenge.id
  network_security_group_id = azurerm_network_security_group.nsgchallenge.id
}