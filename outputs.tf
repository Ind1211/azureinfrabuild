#output "vm_public_ip" {
 # value       = var.create_public_ip ? azurerm_public_ip.public_ip[0].ip_address : null
  #description = "Public IP of VM"
#}

output "vm_private_ip" {
  value       = azurerm_network_interface.nic.private_ip_address
  description = "Private IP of VM"
}

#output "ssh_command" {
 # value = var.create_public_ip ? 
  #  "ssh ${var.admin_username}@${azurerm_public_ip.public_ip[0].ip_address}" :
  #  "No public IP assigned"
#}