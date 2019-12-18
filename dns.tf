resource "azurerm_resource_group" "dns" {
  location = var.location
  name     = var.name_resource_group

  tags = {
    mvp = var.mvp_name
    ctc = var.mvp_contact_email
  }
}

resource "azurerm_dns_zone" "dns_zone" {
  name                = "${var.mvp_name}.apps.thalesdigital.io"
  resource_group_name = azurerm_resource_group.dns.name

  tags = {
    mvp = var.mvp_name
    ctc = var.mvp_contact_email
  }
}

