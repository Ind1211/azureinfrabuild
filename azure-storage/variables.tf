variable "ARM_CLIENT_ID" {
  description = "The Client ID of the Service Principal used for authentication with Azure."
  type        = string
  
}

variable "ARM_CLIENT_SECRET" {
  description = "The Client Secret of the Service Principal used for authentication with Azure."
  type        = string
}

variable "ARM_SUBSCRIPTION_ID" {
  description = "The Subscription ID of the Azure subscription to use."
  type        = string
}

variable "ARM_TENANT_ID" {
  description = "The Tenant ID of the Azure Active Directory."
  type        = string
}

variable "azurevm_rg" {
    description = "The name of the resource group in which to create the resources."
    type        = string
    default     = "storage-statefile"
}

variable "azurevm_location" {
    description = "The Azure region in which to create the resources."
    type        = string
    default     = "West US 3"
}