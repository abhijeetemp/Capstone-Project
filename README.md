# AWS & DevOps Capstone Project — Projects 1–24

## Overview

This repository documents a hands-on AWS and DevOps capstone project covering cloud infrastructure provisioning, automation, monitoring, security, containerization, configuration management, deployment workflows, backup, and recovery.

The projects were completed using AWS, Terraform, Linux, Git, Docker, Kubernetes, Ansible, IAM, CloudWatch and other DevOps tools.

The objective of this capstone is to gain practical experience building, managing, securing, monitoring and troubleshooting cloud infrastructure.

---

## Project List

| Project | Name | Description |
|---|---|---|
| 01 | Terraform EC2 & Apache | Provision EC2 infrastructure using Terraform and deploy Apache. |
| 02 | S3 Static Website | Create and configure an S3 static website hosting project. |
| 03 | CloudWatch Alarm | Configure CloudWatch monitoring and alarms for EC2. |
| 04 | IAM User & Policy | Create IAM identities and permissions. |
| 05 | Linux Permissions | Practice Linux file ownership and permissions. |
| 06 | Terraform Version Control | Manage Terraform infrastructure code through Git. |
| 07 | Terraform CI | Implement automated Terraform checks in CI. |
| 08 | Docker | Build and run containerized applications. |
| 09 | Active Directory | Configure Windows Active Directory Domain Services. |
| 10 | DNS | Configure and understand DNS name resolution. |
| 11 | Git Branching Policy | Practice Git branching and version-control workflows. |
| 12 | Terraform Plan CI | Automate Terraform validation and planning. |
| 13 | Amazon ECR | Create and use a container image repository. |
| 14 | Amazon EKS | Deploy and manage Kubernetes workloads on AWS. |
| 15 | Ansible | Automate server configuration and administration. |
| 16 | HTTPS Load Balancer | Configure HTTPS through an Application Load Balancer. |
| 17 | CloudWatch Agent | Collect system logs for monitoring. |
| 18 | GitOps | Implement a Git-based deployment workflow. |
| 19 | S3 Backup | Implement automated file backup to Amazon S3. |
| 20 | Load Balancer | Distribute application traffic across EC2 instances. |
| 21 | CloudWatch Dashboard | Create a monitoring dashboard for infrastructure metrics. |
| 22 | S3 Log Archive | Store logs in S3 and configure lifecycle management. |
| 23 | IAM Role-Based Access | Attach an IAM role to EC2 for restricted S3 access. |
| 24 | Manual Chaos Test | Simulate a service failure and verify recovery. |

---

## 📚 Capstone Projects Index

| # | Project | Link |
|---|---|---|
| 01 | Terraform EC2 | [Project 01](./project-01-terraform-ec2/) |
| 02 | Terraform S3 Static Website | [Project 02](./project-02-terraform-s3-static-website/) |
| 03 | EC2 CloudWatch Monitoring | [Project 03](./project-03-ec2-cloudwatch-monitoring/) |
| 04 | IAM User Automation | [Project 04](./project-04-iam-user-automation/) |
| 05 | Secure Linux Permissions | [Project 05](./project-05-secure-linux-permissions/) |
| 06 | Version Control Infrastructure | [Project 06](./project-06-version-control-infrastructure/) |
| 07 | Terraform CI | [Project 07](./project-07-terraform-ci/) |
| 08 | Docker App | [Project 08](./project-08-docker-app/) |
| 09 | Domain Controller | [Project 09](./project-09-domain-controller/) |
| 10 | Internal DNS Setup | [Project 10](./project-10-internal-dns-setup/) |
| 11 | Branching Policy | [Project 11](./project-11-branching-policy/) |
| 12 | Infrastructure CI Trigger | [Project 12](./project-12-infrastructure-ci-trigger/) |
| 13 | Build and Push ECR | [Project 13](./project-13-build-push-ecr/) |
| 14 | App Deployment EKS | [Project 14](./project-14-app-deployment-eks/) |
| 15 | Ansible Server Configuration | [Project 15](./project-15-automate-server-config-ansible/) |
| 16 | HTTPS Enablement | [Project 16](./project-16-enable-https-acm/) |
| 17 | CloudWatch Log Forwarding | [Project 17](./project-17-log-forwarding-cloudwatch/) |
| 18 | GitOps Deployment | [Project 18](./project-18-gitops-deployment/) |
| 19 | S3 Backup | [Project 19](./project-19-s3-backup/) |
| 20 | Load Balancer | [Project 20](./project-20-load-balancer/) |
| 21 | CloudWatch Dashboard | [Project 21](./project-21-cloudwatch-dashboard/) |
| 22 | S3 Log Archive | [Project 22](./project-22-s3-log-archive/) |
| 23 | IAM Role Based Access | [Project 23](./project-23-iam-role-access/) |
| 24 | Project 24 | [Project 24](./project-24-manual-chaos-test/) |

---

## Technologies Used

- Amazon Web Services (AWS)
- EC2
- S3
- IAM
- CloudWatch
- ECR
- EKS
- Application Load Balancer
- Terraform
- Linux
- Git & GitHub
- Docker
- Kubernetes
- Ansible
- Windows Server
- Active Directory
- DNS
- Systems Manager

---

## Skills Demonstrated

### Cloud Infrastructure
- Provisioning EC2 instances
- S3 storage and static website hosting
- Load balancer configuration
- Kubernetes infrastructure

### Infrastructure as Code
- Terraform infrastructure provisioning
- Infrastructure version control
- Terraform validation and planning workflows

### DevOps & Automation
- Git version control
- CI workflows
- Docker containerization
- Kubernetes deployments
- Ansible configuration automation
- GitOps concepts

### Monitoring & Operations
- CloudWatch metrics
- CloudWatch alarms
- CloudWatch dashboards
- Log collection
- S3 log archival
- Backup automation

### Security
- IAM users and policies
- IAM roles
- Least-privilege access concepts
- EC2 role-based access
- HTTPS configuration
- Linux permissions

### Reliability
- Load balancing
- Backup procedures
- Lifecycle management
- Service failure simulation
- Recovery verification

---

## Project 20 — Load Balancer

An Application Load Balancer was configured to distribute requests across two EC2 instances.

The infrastructure included:

- Application Load Balancer
- Target Group
- Two EC2 instances
- Health checks

The load balancer was tested to confirm that requests could be served through the load-balanced endpoint.

---

## Project 21 — CloudWatch Dashboard

A CloudWatch dashboard was created to visualize infrastructure metrics.

Dashboard widgets included:

- EC2 CPU Utilization
- Application Load Balancer Request Count
- Healthy Targets
- Target Response Time

---

## Project 22 — S3 Log Archive

An S3 bucket was configured for log storage and lifecycle management.

Implemented features:

- S3 log storage
- Bucket versioning
- Server-side encryption
- Public access blocking
- Lifecycle expiration rules
- Log file archival

---

## Project 23 — IAM Role-Based Access

An IAM role was created and associated with an EC2 instance through an instance profile.

The role was designed to provide restricted S3 access.

Permissions included:

- `s3:ListBucket`
- `s3:GetObject`

The policy restricted access to the designated S3 log archive bucket and its `logs/` objects.

Systems Manager permissions were also attached to support remote management.

The instance profile association and IAM configuration were verified through AWS CLI evidence. Instance-side role access testing remained unconfirmed because the instance was not connected through Systems Manager at the time of verification.

---

## Project 24 — Manual Chaos Test

A controlled Apache service failure was simulated on an EC2 instance.

### Failure Simulation

Apache was intentionally stopped:

```bash
sudo systemctl stop httpd
```

The service state was verified as inactive.

### Recovery

Apache was restarted:

```bash
sudo systemctl start httpd
sudo systemctl enable httpd
```

### Verification

The service was verified using:

```bash
sudo systemctl is-active httpd
sudo systemctl status httpd
curl -I http://localhost
```

### Result

- Service returned to `active (running)`.
- Apache was listening on port 80.
- HTTP health check returned `HTTP/1.1 200 OK`.

The recovery test was executed through AWS Systems Manager Run Command.

---

## Repository Structure

```text
Capstone-Project/
├── project-01/
├── project-02/
├── ...
├── project-22/
├── project-23-iam-role-access/
├── project-24-manual-chaos-test/
│   ├── incident-notes.md
│   └── evidence.json
└── README.md
```

Individual project folders contain project-specific configurations, documentation, scripts and evidence where applicable.

---

## Evidence & Documentation

Project evidence is maintained in the repository through files such as:

- Terraform configurations
- JSON evidence
- Configuration files
- Scripts
- Incident notes
- README documentation
- Screenshots

---

## Learning Objective

This capstone was designed to develop practical skills in:

- Cloud infrastructure management
- Infrastructure as Code
- DevOps automation
- Containerization
- Kubernetes
- Configuration management
- Cloud monitoring
- IAM security
- Backup and recovery
- Troubleshooting

---

## Author

AWS & DevOps Hands-on Capstone Project

Projects 1–24 completed and documented through practical implementation, CLI verification and GitHub version control.
