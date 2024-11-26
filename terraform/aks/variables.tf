variable "region" {
    default = "East US"
    type = string
}

variable "rg-aks-name" {
    default = "rg-aks-challenge-devgrid"
    type = string
}

variable "aks-name" {
    default = "aks-challenge-devgrid"
    type = string
}

variable "aks-dns-prefix" {
    default = "aks-challenge-devgrid"
    type = string
}

variable "aks-node-name" {
    default = "aks-node-challenge-devgrid"
    type = string
}

variable "aks-node-count" {
    default = 1
    type = number
}

variable "aks-node-size" {
    default = "Standard_DS2_v2"
    type = string
}

variable "kubernetes_version" {
    default = "1.29.9"
    type = string
}

variable "identity" {
    default = "SystemAssigned"
    type = string
}