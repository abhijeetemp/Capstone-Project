# Capstone Project 4 - IAM User Automation with Terraform

## Goal
Create an IAM user with controlled S3 read-only permissions.

## Resources
- IAM user: capstone-terraform-s3-reader
- IAM inline policy: capstone-s3-read-policy

## Policy
S3 read-only actions:
- s3:ListAllMyBuckets
- s3:GetBucketLocation
- s3:ListBucket
- s3:GetObject

## Technology
- AWS IAM
- Terraform

## Region
eu-north-1

## Deployment
terraform init
terraform validate
terraform plan
terraform apply
