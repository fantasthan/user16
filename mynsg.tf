resource "azurerm_network_security_group" "user16nsg" {
    name               = "user16nsg1"
    location            = azurerm_resource_group.user16-rg.location
    resource_group_name = azurerm_resource_group.user16-rg.name
    
    security_rule {
        name                           = "SSH"
        priority                         = 1001
        direction                       = "Inbound"
        access                          = "Allow"
        protocol                        = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        ## admin VM IP Setting
        source_address_prefix      = "52.141.2.0/24"
        destination_address_prefix = "*"
    }
    security_rule {
        name                            = "HTTP"
        priority                          = 2001
        direction                        = "Inbound"
        access                           = "Allow"
        protocol                         = "Tcp"
        source_port_range           = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = "Mid test-user16"
    }
}

