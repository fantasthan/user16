resource "azurerm_virtual_network" "user16-net1" {
    name = "user16-net1"
    address_space = ["16.0.0.0/16"]
    location = azurerm_resource_group.user16-rg.location
    resource_group_name = azurerm_resource_group.user16-rg.name
}

resource "azurerm_virtual_network" "user16-net2" {
    name = "user16-net2"
    address_space = ["116.0.0.0/16"]
    location = azurerm_resource_group.user16-rg.location
    resource_group_name = azurerm_resource_group.user16-rg.name
}
