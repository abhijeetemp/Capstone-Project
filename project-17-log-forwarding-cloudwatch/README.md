# Project 17 - Log Forwarding to CloudWatch

## Objective
Centralize EC2 Apache logs using Amazon CloudWatch Logs and the CloudWatch Agent.

## Environment
- AWS Region: eu-north-1
- EC2 Instance: i-0049d7b68d11ff631
- Platform: Amazon Linux 2023
- CloudWatch Agent: 1.300073.2

## Implementation
1. Created IAM role `capstone-project-17-cloudwatch-role`.
2. Attached CloudWatch Agent and Systems Manager permissions.
3. Created and attached EC2 instance profile.
4. Registered the instance with Systems Manager.
5. Installed Amazon CloudWatch Agent through SSM Run Command.
6. Configured Apache access and error log forwarding.
7. Started and verified the CloudWatch Agent.

## Log Groups
- `capstone-project-17-apache-access`
- `capstone-project-17-apache-error`
- `capstone-project-17-system` (configured; creation not yet verified)

## Verification
- SSM instance status: Online.
- CloudWatch Agent status: running.
- Agent config status: configured.
- Apache requests returned HTTP 200.
- Apache access events verified in CloudWatch Logs.

## Configuration
The agent configuration is stored in `cloudwatch-config.json`.

## Evidence
CloudWatch log streams and retrieved Apache log events were verified using AWS CLI.

## Result
Apache access logs are successfully forwarded to CloudWatch Logs. Apache error log stream is also configured. System log forwarding remains unverified.
