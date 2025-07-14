variable "name" {
  type        = string
  description = "The name of the resource"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the subnet"

 
}
variable "virtual_network_name" {
  type        = string
  description = "The name of the virtual network in which to create the subnet"
}