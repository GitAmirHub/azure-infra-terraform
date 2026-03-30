variable "location" {
  default = "UK South"
}

variable "resource_group_name" {
  default = "rg-platform-lab"
}

variable "admin_username" {}

variable "ssh_public_key" {}

variable "home_ip" {}

variable "tags" {
  type = map(string)
  default = {
    environment = "lab"
    project     = "azure-platform"
  }
}