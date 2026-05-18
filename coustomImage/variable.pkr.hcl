variable "client_id" {
  type        = string
  description = "The Application (client) ID of your Azure Service Principal."
}

variable "client_secret" {
  type        = string
  description = "The Client Secret of your Azure Service Principal."
  sensitive   = true
  default     = null
}

variable "tenant_id" {
  type        = string
  description = "The Azure Active Directory Tenant ID."
}

variable "subscription_id" {
  type        = string
  description = "The Azure Subscription ID where resources will be managed."
}

variable "location" {
  type        = string
  description = "The Azure region where the temporary build VM will run."
}

variable "managed_image_resource_group_name" {
  type        = string
  description = "The Resource Group where the intermediate managed image artifact will be stored."
}

variable "image_name" {
  type        = string
  description = "The name of the intermediate managed image resource."
}

variable "vm_size" {
  type        = string
  description = "The size of the VM used to bake the image."
}

variable "image_offer" {
  type        = string
  description = "The OS offer from the publisher."
}

variable "image_sku" {
  type        = string
  description = "The specific SKU of the image."
}

variable "gallery_resource_group" {
  type        = string
  description = "The Resource Group name where your Azure Compute Gallery is hosted."
}

variable "gallery_name" {
  type        = string
  description = "The target Azure Compute Gallery name."
}

variable "gallery_image_definition_name" {
  type        = string
  description = "The pre-existing Image Definition name inside your gallery."
}

variable "gallery_image_version" {
  type        = string
  description = "The version string for the new image artifact (must follow x.y.z format)."
}
