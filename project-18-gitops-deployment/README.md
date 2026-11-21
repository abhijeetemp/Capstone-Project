# Project 18 - GitOps Infrastructure Deployment

## Objective
Automate Terraform infrastructure deployment using GitHub Actions with an approval-gated production deployment.

## AWS Environment
- Region: eu-north-1
- Instance Type: t3.micro
- AMI: Amazon Linux 2023

## Infrastructure
- EC2 Instance ID: i-060779a55976e0e15
- Instance Name: capstone-project-18-gitops
- Public IP: 16.16.184.215
- Private IP: 10.0.13.10
- VPC: vpc-0956bd4896225a585
- Subnet: subnet-0dd16ffb7b5cf3b46

## GitOps Workflow
1. Changes pushed to the main branch trigger GitHub Actions.
2. Terraform Plan executes automatically.
3. The plan is uploaded as an artifact.
4. The apply job waits for production environment approval.
5. After approval, Terraform Apply deploys the infrastructure.

## Security and Approval
- AWS credentials stored as GitHub repository secrets.
- GitHub Environment: production.
- Deployment approval configured through environment protection rules.

## Verification
- Terraform Plan job succeeded.
- Production deployment was approved.
- Terraform Apply job succeeded.
- EC2 instance verified as running through AWS CLI.

## Result
Infrastructure deployment is automated through GitHub Actions with an approval gate before Terraform Apply.
