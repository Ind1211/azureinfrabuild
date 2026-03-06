variable "resource_group_name" {
  default = "azurevm-ubuntu-rg"
}

variable "location" {
  default = "East US 2"
}

variable "vm_name" {
  default = "ubuntu-vm"
}

variable "vm_size" {
  default = "Standard_D2s_v3"
}

variable "admin_username" {
  default = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH"
  default     = "0.0.0.0/0"
}

variable "create_public_ip" {
  description = "Whether to create public IP"
  type        = bool
  default     = false
}

variable "azurerm_virtual_network_address_space" {
  description = "Address space for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "azurerm_network_interface" {
  description = "Whether to create network interface"
  type        = bool
  default     = true
}

variable "use_cloud_init" {
  description = "Enable cloud-init bootstrap"
  type        = bool
  default     = false
}