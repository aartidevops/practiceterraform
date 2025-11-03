variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "address_space" {
  description = "VNet address space"
  type        = string
}

variable "subnet_prefix" {
  description = "Subnet address prefix"
  type        = string
}

