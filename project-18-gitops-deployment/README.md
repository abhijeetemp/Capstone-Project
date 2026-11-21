# Project 18 - GitOps Infrastructure Deployment

## Objective
Deploy infrastructure updates automatically through GitHub Actions after changes are merged into main.

## Implementation
- Terraform configuration isolated in this project directory.
- GitHub Actions workflow runs Terraform Plan.
- Apply job is gated by GitHub Environment approval.
- Infrastructure changes are triggered by pushes to main.

## Approval
Configure a GitHub Environment named `production` with required reviewers.

## AWS Region
eu-north-1

## Infrastructure
Terraform-managed EC2 instance using Amazon Linux 2023 and instance type t3.micro.
