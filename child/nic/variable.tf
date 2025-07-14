variable "name" {
  type        = string
  description = "The name of the resource"
}   

variable "location" {
  type        = string
  description = "The location where the resource will be created"

  
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the resource will be created"
  
}

variable "virtual_network_name" {
  type        = string
  description = "The name of the virtual network where the subnet is located"
  
}