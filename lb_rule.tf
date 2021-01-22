resource "azurerm_lb_rule" "lbnatrule1" {
    resource_group_name = azurerm_resource_group.user16-rg.name
    loadbalancer_id = azurerm_lb.user16-lb1.id
    name = "http"
    protocol = "Tcp"
    frontend_port = 80
    backend_port = 80
    backend_address_pool_id = azurerm_lb_backend_address_pool.user16-bpepool1.id
    frontend_ip_configuration_name = "usert16PublicIPAddress1"
    probe_id = azurerm_lb_probe.user16-lb-probe1.id
}

resource "azurerm_lb_rule" "lbnatrule2" {
    resource_group_name = azurerm_resource_group.user16-rg.name
    loadbalancer_id = azurerm_lb.user16-lb2.id
    name = "http"
    protocol = "Tcp"
    frontend_port = 80
    backend_port = 80
    backend_address_pool_id = azurerm_lb_backend_address_pool.user16-bpepool2.id
    frontend_ip_configuration_name = "usert16PublicIPAddress2"
    probe_id = azurerm_lb_probe.user16-lb-probe2.id
}
