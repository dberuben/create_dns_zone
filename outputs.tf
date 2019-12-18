output "mvp_name" {
  value = "${var.mvp_name}"
}

output "name_servers" {
  value = "${azurerm_dns_zone.dns_zone.name_servers}"
}

output "dns_zone_name" {
  value = "${azurerm_dns_zone.dns_zone.name}"
}
