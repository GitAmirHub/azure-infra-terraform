# Azure Terraform Labs

This repository contains Terraform-based Azure infrastructure projects.

## Projects

### basic-vm
Deploys:
- Resource Group
- VNet + Subnet
- NSG (restricted SSH)
- Linux VM with public IP

### platform-architecture
Deploys:
- VNet with public and private subnets
- Jumpbox VM (public subnet)
- Private VM (no public IP)
- NSG security model
- SSH via jumpbox architecture