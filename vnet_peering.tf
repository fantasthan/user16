resource "azurerm_virtual_network_peering" "user16-vnet-peering1" {
    name                              = "user16-peer1to2"
    resource_group_name       = azurerm_resource_group.user16-rg.name
    virtual_network_name        = azurerm_virtual_network.user16-net1.name
    remote_virtual_network_id  = azurerm_virtual_network.user16-net2.id
}

resource "azurerm_virtual_network_peering" "user16-vnet-peering2" {
    name                              = "user16-peer2to1"
    resource_group_name       = azurerm_resource_group.user16-rg.name
    virtual_network_name        = azurerm_virtual_network.user16-net2.name
    remote_virtual_network_id  = azurerm_virtual_network.user16-net1.id
}
