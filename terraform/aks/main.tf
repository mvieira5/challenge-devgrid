resource "azurerm_kubernetes_cluster" "akschallenge" {
  name                = var.aks-name
  location            = var.region
  resource_group_name = var.rg-aks-name
  dns_prefix          = var.aks-dns-prefix

  default_node_pool {
    name       = var.aks-node-name
    node_count = var.aks-node-count
    vm_size    = var.aks-node-size
  }

  identity {
    type = var.identity
  }

  kubernetes_version = var.kubernetes_version
}