module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source              = "./modules/network"
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
  location            = var.location
  resource_group_name = module.resource_group.rg_name
  address_space       = var.address_space
  subnet_prefix       = var.subnet_prefix
}

module "vm" {
  source              = "./modules/vm"
  vm_name             = var.vm_name
  location            = var.location
  resource_group_name = module.resource_group.rg_name
  subnet_id           = module.network.subnet_id
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}

module "redis" {
  source              = "./modules/vm"
  vm_name             = "redis"
  location            = var.location
  resource_group_name = module.resource_group.rg_name
  subnet_id           = module.network.subnet_id
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}



