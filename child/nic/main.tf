data "azurerm_subnet" "data" {
  name                 = var.name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name

}

resource "azurerm_network_interface" "nic" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = "subscriptions/b8bfe010-cd92-4a56-a797-e30f0d592bc2/resourceGroups/udit-rg/providers/Microsoft.Network/virtualNetworks/udit-vnet/subnets/udit-subnet"
    private_ip_address_allocation = "Dynamic"
  }
}