module "rg" {
  source   = "../../modules/aks/resource-group"
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "../../modules/aks/network"
  resource_group_name = module.rg.name
  location            = var.location
  vnet_name           = "aks-vnet"
  subnet_name         = "aks-subnet"
}

module "aks" {
  source = "../../modules/aks/aks"

  cluster_name        = var.cluster_name
  location            = var.location
  resource_group_name = module.rg.name
  subnet_id           = module.network.subnet_id
}

terraform {
  backend "azurerm" {
    resource_group_name  = "storage-statefile"
    storage_account_name = "indrastorage1211"
    container_name       = "terraformstatefile"
    key                  = "aks-cluster/terraform.tfstate"
  }
}