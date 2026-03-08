provider "azurerm" {

}
module "vm_instance" {
  source = "./main.tf"
}

