resource "azurerm_lb" "user16-lb1" {
  name = "user16lb1"
  location = azurerm_resource_group.user16-rg.location
  resource_group_name = azurerm_resource_group.user16-rg.name
  frontend_ip_configuration {
    name = "usert16PublicIPAddress1"
    public_ip_address_id = azurerm_public_ip.user16-publicip1.id
  }
}

resource "azurerm_lb" "user16-lb2" {
  name = "user16lb2"
  location = azurerm_resource_group.user16-rg.location
  resource_group_name = azurerm_resource_group.user16-rg.name
  frontend_ip_configuration {
    name = "usert16PublicIPAddress2"
    public_ip_address_id = azurerm_public_ip.user16-publicip2.id
  }
}
