provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "storage-rg"
    storage_account_name = "indrastorage1211"
    container_name       = "terraformstatefile"
    key                  = "/azure-vm/terraform.tfstate"
  }
}
module "vm_deploy" {
  source = "../modules/vm_deploy"
    ARM_CLIENT_ID = var.ARM_CLIENT_ID
    ARM_CLIENT_SECRET = var.ARM_CLIENT_SECRET
    ARM_SUBSCRIPTION_ID = var.ARM_SUBSCRIPTION_ID
    ARM_TENANT_ID = var.ARM_TENANT_ID
    azurevm_rg = var.azurevm_rg
  
}

