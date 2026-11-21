# Project 21: CloudWatch Monitoring Dashboard

## Goal
Visualize AWS infrastructure performance using Amazon CloudWatch.

## Dashboard
Dashboard name: Capstone-Project-21

Region: eu-north-1

## Metrics Monitored
- EC2 CPU Utilization for two web servers
- Application Load Balancer Request Count
- Application Load Balancer Healthy Targets
- Application Load Balancer Target Response Time

## Resources Monitored
- EC2 Instance 1: i-0f5e07ac662f787d8
- EC2 Instance 2: i-0f70a79cf0137b329
- ALB: capstone-project-20-alb
- Target Group: capstone-project-20-tg

## Verification
- Dashboard created using AWS CLI.
- CloudWatch dashboard validation returned no errors.
- Dashboard retrieved successfully using AWS CLI.
- Dashboard visual verification and screenshot captured.

## Dashboard Creation
```bash
aws cloudwatch put-dashboard \
  --dashboard-name Capstone-Project-21 \
  --dashboard-body file://dashboard.json \
  --region eu-north-1
cat > README.md <<'EOF'
# Project 21: CloudWatch Monitoring Dashboard

## Goal
Visualize AWS infrastructure performance using Amazon CloudWatch.

## Dashboard
Dashboard name: Capstone-Project-21

Region: eu-north-1

## Metrics Monitored
- EC2 CPU Utilization for two web servers
- Application Load Balancer Request Count
- Application Load Balancer Healthy Targets
- Application Load Balancer Target Response Time

## Resources Monitored
- EC2 Instance 1: i-0f5e07ac662f787d8
- EC2 Instance 2: i-0f70a79cf0137b329
- ALB: capstone-project-20-alb
- Target Group: capstone-project-20-tg

## Verification
- Dashboard created using AWS CLI.
- CloudWatch dashboard validation returned no errors.
- Dashboard retrieved successfully using AWS CLI.
- Dashboard visual verification and screenshot captured.

## Dashboard Creation
```bash
aws cloudwatch put-dashboard \
  --dashboard-name Capstone-Project-21 \
  --dashboard-body file://dashboard.json \
  --region eu-north-1
