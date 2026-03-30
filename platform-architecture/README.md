Azure Platform Architecture (Terraform)
This project demonstrates a secure Azure platform architecture deployed using Terraform.
It follows infrastructure-as-code principles and implements a jumpbox pattern for secure access to private workloads.

Architecture
VNet (10.0.0.0/16)
│
├── Public Subnet (10.0.1.0/24)
│   └── Jumpbox VM (Public IP)
│
└── Private Subnet (10.0.2.0/24)
    └── Private VM (No Public IP)
Access flow:

Local Machine → Jumpbox → Private VM
This prevents direct internet exposure of internal workloads.

Resources Deployed
Resource Group

Virtual Network

Public Subnet

Private Subnet

Network Security Group

Public IP (Jumpbox only)

Jumpbox Linux VM

Private Linux VM

Network Interfaces

SSH key authentication

Terraform variables & tagging

Security Design
No public IP on private workload VM

SSH restricted via NSG rules

Key-based authentication only

Deny-all inbound rule

Segmented public/private subnets

Jumpbox access pattern

Prerequisites
Terraform

Azure CLI

Azure subscription

SSH key pair

Login to Azure:

az login
Usage
Initialize Terraform:

terraform init
Plan deployment:

terraform plan
Deploy:

terraform apply
Destroy resources:

terraform destroy
Variables
Name	Description
location	Azure region
resource_group_name	Resource group name
admin_username	VM admin username
ssh_public_key	SSH public key
home_ip	Your public IP for SSH access
Outputs
Name	Description
jumpbox_public_ip	Public IP for jumpbox VM
Connecting
SSH to jumpbox:

ssh user@<jumpbox_public_ip>
Then SSH to private VM:

ssh user@10.0.2.4
(Private IP shown in Azure portal)

Skills Demonstrated
Azure platform architecture

Terraform Infrastructure as Code

Secure network segmentation

Jumpbox access pattern

NSG security rules

Azure VM provisioning

SSH key authentication

Reusable Terraform configuration

Future Improvements
Terraform remote state (Azure Storage)

Managed identity + RBAC

Log Analytics integration

Terraform modules

CI/CD pipeline deployment

Bastion host alternative architecture