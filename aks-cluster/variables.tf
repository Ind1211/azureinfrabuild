variable "resource_group_name" {
  default = "enterprise-aks-rg"
}

variable "location" {
  default = "West US 3"
}

variable "cluster_name" {
  default = "enterprise-aks"
}
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