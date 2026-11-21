# Project 23: IAM Role-Based S3 Access for EC2

## Goal
Secure AWS resource access by assigning an IAM role to an EC2 instance instead of storing access keys on the instance.

## AWS Resources
- EC2 Instance: i-0f5e07ac662f787d8
- IAM Role: capstone-project-23-ec2-s3-role
- Instance Profile: capstone-project-23-instance-profile
- IAM Policy: capstone-project-23-s3-read-policy

## Permissions
The role permits:
- s3:ListBucket on capstone-project-22-logs-590507089733
- s3:GetObject on objects under logs/

Systems Manager permissions were also attached using AmazonSSMManagedInstanceCore to support remote management.

## Completed
- Created EC2 trust policy.
- Created IAM role.
- Created least-privilege S3 policy.
- Created instance profile.
- Attached IAM role to instance profile.
- Associated instance profile with EC2.
- Verified instance profile association.

## Verification Limitation
The EC2 instance profile attachment was verified through AWS CLI.
The EC2 instance currently reports ConnectionLost in Systems Manager, so role-based S3 access from inside the instance has not yet been confirmed.

## Files
- trust-policy.json
- s3-policy.json
