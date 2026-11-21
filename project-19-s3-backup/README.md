# Project 19 — Automated S3 Backup

## Objective
Create an automated backup solution using Amazon S3 with secure storage, versioning, encryption, and scheduled backups.

## AWS Resources
- S3 Bucket: `capstone-project-19-backup-590507089733`
- Region: `eu-north-1`
- Versioning: Enabled
- Server-side encryption: AES-256
- Public access: Blocked

## Project Features
- Created sample backup data.
- Uploaded files to Amazon S3.
- Verified uploaded objects.
- Restored backup data locally.
- Enabled S3 bucket versioning.
- Verified multiple object versions.
- Enabled AES-256 server-side encryption.
- Configured all S3 public-access block settings.
- Created an automated backup shell script.
- Scheduled daily backup using cron.

## Backup Script
Run the backup manually:

\`\`\`bash
./backup.sh
\`\`\`

## Scheduled Backup
Cron schedule:

`0 2 * * *`

Daily at 2:00 AM UTC.

## Restore
Restore data from S3:

\`\`\`bash
aws s3 sync s3://capstone-project-19-backup-590507089733/backup-data/ restore-test/
\`\`\`

## Verification
- Uploaded objects verified using `aws s3 ls`.
- Restore test completed successfully.
- Bucket versioning verified.
- Multiple object versions confirmed.
- Encryption verified.
- Public access block verified.
- Backup script executed successfully.
- Cron schedule verified.

## Security
- S3 versioning enabled.
- AES-256 server-side encryption enabled.
- Public access blocked.
- AWS CLI used for backup operations.

## Outcome
Successfully implemented an automated, versioned, encrypted, and private S3 backup solution with scheduled daily backups.
