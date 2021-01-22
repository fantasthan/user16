resource "azurerm_lb_backend_address_pool" "user16-bpepool1" {
    name = "user16-BackEndAddressPool1"
    resource_group_name = azurerm_resource_group.user16-rg.name
    loadbalancer_id     = azurerm_lb.user16-lb1.id
}

resource "azurerm_lb_backend_address_pool" "user16-bpepool2" {
    name = "user16-BackEndAddressPool2"
    resource_group_name = azurerm_resource_group.user16-rg.name
    loadbalancer_id     = azurerm_lb.user16-lb2.id
}
