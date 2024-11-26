variable "region" {
    default = "East US"
    type = string
}

variable "rg-vnet-name" {
    default = "rg-vnet-challenge-devgrid"
    type = string
}

variable "vnet-name" {
    default = "vnet-challenge-devgrid"
    type = string
}

variable "snet-name" {
    default = "snet-challenge-devgrid-01"
    type = string
}

variable "nsg-name" {
    default = "nsg-challenge-devgrid"
    type = string
}

variable "vnet-address-space" {
    default = "10.0.0.0/16"
    type = string
}

variable "snet-address-space" {
    default = "10.0.1.0/24"
    type = string
}