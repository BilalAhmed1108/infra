resource "azurerm_virtual_network" "vnet" {
    name = var.vnet_name
    location = var.vnet_location
    resource_group_name = var.vnet_rgname
    address_space = var.addres_space
}
# ["10.0.0.0/16"]

