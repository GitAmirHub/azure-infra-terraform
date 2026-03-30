output "public_ip_address" {
  value       = azurerm_public_ip.main.ip_address
  description = "The public IP address of the VM"
}

output "ssh_connection_string" {
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.main.ip_address}"
  description = "SSH command to connect to the VM"
}