provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rgvnetchallenge" {
  name     = var.rg-vnet-name
  location = var.region
}

resource "azurerm_resource_group" "rgakschallenge" {
  name     = var.rg-vnet-name
  location = var.region
}