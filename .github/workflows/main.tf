provider "azurerm" {

}
module "ec2_instance" {
  source = "./modules/vm_deploy"
}