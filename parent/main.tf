module "resource" {
  source = "../child/resource"

 
    name     = "udit-rg"
    location = "eastus"
}

module "vnet" {
  source = "../child/vnet"
depends_on = [ module.resource ]
  name                = "udit-vnet"
  location            = "eastus"
  resource_group_name = "udit-rg"  
}

module "subnet" {
  source = "../child/subnet"
  depends_on = [ module.vnet ]
  name                = "udit-subnet"
  resource_group_name = "udit-rg"
  virtual_network_name = "udit-vnet"
}

module "nic" {
  source = "../child/nic"
  
  name                = "udit-nic"
  location            = "eastus"
  resource_group_name = "udit-rg"
  virtual_network_name = "udit-vnet"
  
}