# Capstone Project 3 - EC2 State Monitoring with CloudWatch

## Goal
Monitor EC2 CPU utilization and trigger an alarm when CPU usage exceeds a threshold.

## Resources
- EC2 instance deployed using Terraform
- Security group
- CloudWatch CPU alarm
- Automated CPU load using stress-ng

## Alarm Configuration
- Metric: CPUUtilization
- Threshold: 70%
- Evaluation periods: 2
- Period: 60 seconds

## AWS Region
eu-north-1

## Deployment
```bash
terraform init
terraform validate
terraform plan
terraform apply EOF
cat > README.md <<'EOF'
# Capstone Project 3 - EC2 State Monitoring with CloudWatch

## Goal
Monitor EC2 CPU utilization and trigger an alarm when CPU usage exceeds a threshold.

## Resources
- EC2 instance deployed using Terraform
- Security group
- CloudWatch CPU alarm
- Automated CPU load using stress-ng

## Alarm Configuration
- Metric: CPUUtilization
- Threshold: 70%
- Evaluation periods: 2
- Period: 60 seconds

## AWS Region
eu-north-1

## Deployment
```bash
terraform init
terraform validate
terraform plan
terraform apply
