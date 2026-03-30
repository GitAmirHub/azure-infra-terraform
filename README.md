# Azure Infrastructure with Terraform

This project provisions a secure Azure environment using Terraform, 
demonstrating infrastructure-as-code principles and cloud networking fundamentals.

## What Gets Deployed

- Resource Group
- Virtual Network with two subnets (public and private)
- Network Security Group with SSH access restricted to a single IP
- Deny-all inbound rule blocking all other traffic
- Network Interface
- Public IP address
- Linux Virtual Machine (Ubuntu 22.04, Standard_B1s)

## Remote State

Terraform state is stored remotely in an Azure Blob Storage container rather 
than locally, mirroring how state is managed in production team environments.

## Security Decisions

SSH access is restricted to a specific home IP address via an NSG rule rather 
than being open to the internet. A deny-all inbound rule sits beneath it to 
block all other inbound traffic explicitly.

## How to Deploy

1. Install Terraform and Azure CLI
2. Run `az login` to authenticate
3. Create a Storage Account and Blob Container for remote state
4. Update `providers.tf` with your storage account name
5. Create `terraform.tfvars` with your home IP and a strong password
6. Run `terraform init`, `terraform plan`, then `terraform apply`
7. Run `terraform destroy` when finished to avoid unnecessary costs

## Technologies Used

- Terraform
- Azure Resource Manager (AzureRM)
- Azure Virtual Network
- Azure Network Security Groups
- Azure Blob Storage (remote state)