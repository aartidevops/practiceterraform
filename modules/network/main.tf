resource "azurerm_virtual_network" "virtual_network" {
  name                = "var.vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group_name
  resource_group_name = var.location
}

resource "azurerm_subnet" "internal" {
  name                 = "var.subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet
  address_prefixes     = ["10.0.2.0/24"]
}

