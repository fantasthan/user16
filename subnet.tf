resource "azurerm_subnet" "user16-subnet1" {
    name = "user16-subnet1"
    resource_group_name = azurerm_resource_group.user16-rg.name
    virtual_network_name = azurerm_virtual_network.user16-net1.name
    address_prefixes = ["16.0.1.0/24"]
}

resource "azurerm_subnet" "user16-subnet2" {
    name = "user16-subnet2"
    resource_group_name = azurerm_resource_group.user16-rg.name
    virtual_network_name = azurerm_virtual_network.user16-net2.name
    address_prefixes = ["116.0.1.0/24"]
}
