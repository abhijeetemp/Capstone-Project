# Project 24: Manual Chaos Test

## Objective
Record a controlled service failure and verify service recovery.

## Environment
- AWS Region: eu-north-1
- EC2 Instance: i-0049d7b68d11ff631
- Service: Apache HTTP Server (httpd)
- Test method: AWS Systems Manager Run Command

## Incident Simulation
Apache was intentionally stopped using:
sudo systemctl stop httpd

Verification during failure:
- Service state: inactive
- Failure was intentionally introduced for this test.

## Recovery
Apache was restarted using:
sudo systemctl start httpd

The service was also enabled at boot:
sudo systemctl enable httpd

## Recovery Verification
- systemctl is-active httpd: active
- Service status: active (running)
- Service listening on port 80
- HTTP local health check: HTTP/1.1 200 OK

## Outcome
The manually introduced failure was recovered successfully.
Apache returned to a running state and the local HTTP health check
returned HTTP 200 OK.

## Test Limitation
This was a controlled manual service-recovery test.
It did not simulate infrastructure-wide failure.
