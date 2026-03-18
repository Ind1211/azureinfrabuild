
resource "azurerm_log_analytics_workspace" "log" {
  name                = "${var.cluster_name}-logs"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "aksdns"

  private_cluster_enabled = true

  default_node_pool {
    name           = "systempool"
    vm_size        = "Standard_B2as_v2"
    vnet_subnet_id = var.subnet_id

    node_count = 1
    max_pods   = 110
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
  }

  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.log.id
  }

  tags = {
    environment = "Test"
  }
}

variable "cluster_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "subnet_id" {}

