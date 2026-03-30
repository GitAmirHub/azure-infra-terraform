# Azure Platform Architecture (Terraform)

Secure Azure platform architecture built using Terraform.  
Demonstrates segmented networking, jumpbox access pattern, and secure infrastructure design.

---

## Architecture
VNet (10.0.0.0/16)
│
├── Public Subnet (10.0.1.0/24)
│ └── Jumpbox VM (Public IP)
│
└── Private Subnet (10.0.2.0/24)
└── Private VM (No Public IP)

### Access Flow
Local Machine → Jumpbox → Private VM

This prevents direct internet exposure of internal workloads.

---

## Resources Deployed

- Resource Group  
- Virtual Network (VNet)  
- Public Subnet  
- Private Subnet  
- Network Security Group (NSG)  
- Public IP (Jumpbox only)  
- Jumpbox Linux VM  
- Private Linux VM (no public access)  
- Network Interfaces  
- SSH key authentication  
- Terraform variables & outputs  

---

## Security Features

- No public IP on private VM  
- SSH key authentication only  
- NSG restricted to trusted IP  
- Deny‑all inbound rule  
- Public / private subnet segmentation  
- Jumpbox access architecture  

---

## Prerequisites

- Terraform installed  
- Azure CLI installed  
- Azure subscription  
- SSH key pair  

Login to Azure:

---

## Deployment

Initialize Terraform

---

## Variables

| Name | Description |
|------|-------------|
| location | Azure region |
| resource_group_name | Resource group name |
| admin_username | VM admin username |
| ssh_public_key | SSH public key |
| home_ip | Your public IP for SSH |

---

## Outputs

| Name | Description |
|------|-------------|
| jumpbox_public_ip | Public IP of jumpbox VM |

---

## Connect

SSH to jumpbox

SSH to private VM from jumpbox

---

## Skills Demonstrated

- Azure platform architecture  
- Terraform Infrastructure as Code  
- Network segmentation (public/private)  
- Jumpbox access pattern  
- NSG security rules  
- Secure SSH configuration  
- Azure Linux VM deployment  
- Reusable Terraform configuration  

---

## Future Improvements

- Remote Terraform state (Azure Storage)  
- Managed identity + RBAC  
- Azure Monitor / Log Analytics  
- Terraform modules  
- CI/CD pipeline deployment  