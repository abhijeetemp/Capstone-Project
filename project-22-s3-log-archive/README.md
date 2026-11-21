# Project 22: S3 Log Archive with Lifecycle

## Goal
Reduce storage costs by storing logs in Amazon S3 and configuring lifecycle expiration.

## AWS Configuration
- Region: eu-north-1
- Bucket: capstone-project-22-logs-590507089733
- Versioning: Enabled
- Server-side encryption: AES256
- Lifecycle expiration: 30 days
- Noncurrent version expiration: 30 days

## Log Files
- logs/application.log
- logs/error.log

## Tasks Completed
- Created dedicated S3 bucket.
- Enabled bucket versioning.
- Enabled AES256 server-side encryption.
- Uploaded sample log files.
- Verified uploaded files.
- Configured lifecycle expiration for objects under logs/.
- Configured noncurrent-version expiration.

## Lifecycle Policy
Objects under logs/ expire after 30 days. Noncurrent object versions expire after 30 days.

## Verification
AWS CLI was used to verify uploaded objects, versioning, encryption, public access protection and lifecycle configuration.
