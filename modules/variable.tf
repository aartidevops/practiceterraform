variable "subscription_id" {}
variable "location" {
  default = "ukwest"
}
variable "resource_group" {
  default = "rg-demo"
}
variable "vnet" {
  default = "vnet-demo"
}
variable "subnet" {
  default = "subnet-demo"
}
variable "vm" {
  default = "vm-demo"
}
variable "admin_username" {}
variable "admin_password" {}
