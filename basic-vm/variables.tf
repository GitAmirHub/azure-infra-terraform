variable "resource_group_name" {
  default = "rg-azure-infra"
}

variable "location" {
  default = "ukwest"
}

variable "home_ip" {
  description = "Your home public IP for SSH access"
}

variable "admin_username" {
  default = "azureuser"
}

variable "admin_password" {
  description = "Password for the Linux VM"
  sensitive   = true
}

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
}