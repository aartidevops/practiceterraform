module "resource_group" {
  source = "./vm"
}

module "network" {
  source = "./network"
}

module "vm" {
  source = "./vm"
}






