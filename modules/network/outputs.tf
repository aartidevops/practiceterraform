output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.this.name
}

output "subnet_name" {
  description = "The name of the Subnet"
  value       = azurerm_subnet.this.name
}

output "subnet_id" {
  description = "The ID of the Subnet"
  value       = azurerm_subnet.this.id
}
