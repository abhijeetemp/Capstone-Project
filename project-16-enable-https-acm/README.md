# Project 16 — Enable HTTPS

## Objective
Secure web access using an HTTPS Application Load Balancer and an ACM certificate.

## Implementation
- Created a self-signed TLS certificate.
- Imported the certificate into AWS Certificate Manager (ACM).
- Created an internet-facing Application Load Balancer.
- Configured the ALB security group to allow HTTPS (443).
- Created an HTTP target group on port 80.
- Registered the existing EC2 Apache server as a target.
- Restricted EC2 port 80 access by adding a rule allowing traffic from the ALB security group.
- Configured an HTTPS listener (443) with the imported ACM certificate.
- No public HTTP listener was configured on the ALB.

## Resources
- Region: eu-north-1
- ALB: capstone-project-16-alb
- Target Group: capstone-project-16-tg
- EC2: i-0049d7b68d11ff631
- ACM Certificate: Imported self-signed certificate

## Verification
- Target health: Healthy
- HTTPS curl test: HTTP/2 200
- Server response: Apache

## HTTPS URL
https://capstone-project-16-alb-279569065.eu-north-1.elb.amazonaws.com

## Certificate Limitation
The certificate is self-signed and uses a demo hostname. Browser trust and hostname validation warnings are expected. A production deployment requires a domain owned by the administrator and a publicly trusted certificate.

## Security
The private key is not included in this repository.
