resource "azurerm_resource_group" "user16-rg" {
    name     = "user16-rg"
    location = "koreacentral"

    tags = {
        environment = "Mid test-user16"
    }
}

