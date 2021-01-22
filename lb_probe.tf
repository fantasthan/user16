resource "azurerm_lb_probe" "user16-lb-probe1" {
    resource_group_name = azurerm_resource_group.user16-rg.name
    loadbalancer_id = azurerm_lb.user16-lb1.id
    name = "http-probe"
    protocol = "Http"
    request_path = "/"
    port = 80
}

resource "azurerm_lb_probe" "user16-lb-probe2" {
    resource_group_name = azurerm_resource_group.user16-rg.name
    loadbalancer_id = azurerm_lb.user16-lb2.id
    name = "http-probe"
    protocol = "Http"
    request_path = "/"
    port = 80
}
