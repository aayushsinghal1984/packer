packer {
  required_plugins {
    azure = {
      source  = "github.com/hashicorp/azure"
      version = "~> 2"
    }
  }
}

source "azure-arm" "newimage" {

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

  
  location                          = var.location
  managed_image_resource_group_name = var.managed_image_resource_group_name
  managed_image_name                = var.image_name

  
  os_type         = "Linux"
  vm_size         = var.vm_size
  image_publisher = "canonical"
  image_offer     = var.image_offer
  image_sku       = var.image_sku

 }

build {
  sources = ["source.azure-arm.newimage"]

  provisioner "shell" {
    inline = [
      "sudo apt-get update -y",
      "echo \"Netflix Image Build Completed Successfully!\""
    ]
  }

  post-processor "manifest" {
    output     = "packer-manifest.json"
    strip_path = true
  }
}