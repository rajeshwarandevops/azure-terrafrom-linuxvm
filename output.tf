output "webvmpip" {
  description = "output webvm puplic ip"
  value       = azurerm_public_ip.web-vm-pip.ip_address
}

output "webvmnicname" {
  description = "name of the webvm -nic"
  value       = azurerm_network_interface.webvm.name
}


output "webvmname" {
  description = "name of the webvm"
  value       = azurerm_linux_virtual_machine.webvm.name
}
