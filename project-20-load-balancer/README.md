# Project 20: AWS Application Load Balancer with Terraform

## Overview
Provisioned an Application Load Balancer (ALB) using Terraform to distribute HTTP traffic across two Amazon Linux EC2 web servers in separate Availability Zones.

## Architecture
- AWS Region: eu-north-1
- VPC: capstone-vpc
- Public subnet AZ1: subnet-0dd16ffb7b5cf3b46
- Public subnet AZ2: subnet-003eb0d78698cf3e1
- 2 EC2 instances: t3.micro
- Application Load Balancer
- HTTP Listener: Port 80
- Target Group: HTTP Port 80
- Security Groups for ALB and web servers

## Resources Created
- 2 EC2 web servers
- 2 Security Groups
- 1 Application Load Balancer
- 1 Target Group
- 2 Target Group Attachments
- 1 HTTP Listener

## Load Balancer URL
http://capstone-project-20-alb-1217675783.eu-north-1.elb.amazonaws.com

## Verification
- Terraform validation successful.
- Terraform plan confirmed 9 resources.
- Both EC2 web servers deployed successfully.
- HTTP requests through the ALB returned responses from Web Server 1 and Web Server 2.
- Multiple curl requests confirmed traffic distribution.

## Security
- ALB allows inbound HTTP traffic on port 80.
- Web server security group allows HTTP traffic from the ALB security group.
- Outbound traffic is allowed for installation and updates.

## Deployment
```bash
terraform init
terraform validate
terraform plan
terraform apply
cat > README.md <<'EOF'
# Project 20: AWS Application Load Balancer with Terraform

## Overview
Provisioned an Application Load Balancer (ALB) using Terraform to distribute HTTP traffic across two Amazon Linux EC2 web servers in separate Availability Zones.

## Architecture
- AWS Region: eu-north-1
- VPC: capstone-vpc
- Public subnet AZ1: subnet-0dd16ffb7b5cf3b46
- Public subnet AZ2: subnet-003eb0d78698cf3e1
- 2 EC2 instances: t3.micro
- Application Load Balancer
- HTTP Listener: Port 80
- Target Group: HTTP Port 80
- Security Groups for ALB and web servers

## Resources Created
- 2 EC2 web servers
- 2 Security Groups
- 1 Application Load Balancer
- 1 Target Group
- 2 Target Group Attachments
- 1 HTTP Listener

## Load Balancer URL
http://capstone-project-20-alb-1217675783.eu-north-1.elb.amazonaws.com

## Verification
- Terraform validation successful.
- Terraform plan confirmed 9 resources.
- Both EC2 web servers deployed successfully.
- HTTP requests through the ALB returned responses from Web Server 1 and Web Server 2.
- Multiple curl requests confirmed traffic distribution.

## Security
- ALB allows inbound HTTP traffic on port 80.
- Web server security group allows HTTP traffic from the ALB security group.
- Outbound traffic is allowed for installation and updates.

## Deployment
```bash
terraform init
terraform validate
terraform plan
terraform apply
