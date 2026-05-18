

variable "client_id" {
  type        = string
  default     = "d8740cc1-534f-4a77-83e0-4121641d8a4a"
  description = "The Application (client) ID of your Azure Service Principal."
}

variable "client_secret" {
  type        = string
  default     = ""
  description = "The Client Secret of your Azure Service Principal."
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  default     = "75afb3d2-9f8d-4468-8d85-ac3e51bbfa2c"
  description = "The Azure Active Directory Tenant ID."
}

variable "subscription_id" {
  type        = string
  default     = "5e2ade1f-9bb8-4b4f-874f-5fd49f66c2fa"
  description = "The Azure Subscription ID where resources will be managed."
}


variable "location" {
  type        = string
  description = "The Azure region where the temporary build VM will run (e.g., Central India)."
  default     = "Central India"
}

variable "managed_image_resource_group_name" {
  type        = string
  default     = "rg-coustomer-images"
  description = "The Resource Group where the intermediate managed image artifact will be stored."
}

variable "image_name" {
  type        = string
  description = "The name of the intermediate managed image resource."
  default     = "prod-ubuntu-image"
}

# ==========================================
# 3. Base Source OS Details
# ==========================================

variable "vm_size" {
  type        = string
  description = "The size of the VM used to bake the image."
  default     = "Standard_D2s_v5"
}

variable "image_offer" {
  type        = string
  description = "The OS offer from the publisher."
  default     = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
  type        = string
  description = "The specific SKU of the image."
  default     = "22_04-lts-gen2"
}

# ==========================================
# 4. Azure Compute Gallery Variables (The dependencies)
# ==========================================

variable "gallery_resource_group" {
  type        = string
  default     = "rg-coustomer-images"
  description = "The Resource Group name where your Azure Compute Gallery is hosted."
}

variable "gallery_name" {
  type        = string
  default     = "gallery-coustomer-images"
  description = "The target Azure Compute Gallery name."
}

variable "gallery_image_definition_name" {
  type        = string
  default     = "ubuntu-image-definition"
  description = "The pre-existing Image Definition name inside your gallery."
}

variable "gallery_image_version" {
  type        = string
  description = "The version string for the new image artifact (must follow x.y.z format)."
  default     = "1.0.0"
}