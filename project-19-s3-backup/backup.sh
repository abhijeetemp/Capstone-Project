#!/bin/bash
set -e

BUCKET="capstone-project-19-backup-590507089733"
SOURCE="backup-data/"
DESTINATION="s3://${BUCKET}/backup-data/"

echo "Starting S3 backup: $(date)"
aws s3 sync "$SOURCE" "$DESTINATION"
echo "Backup completed successfully: $(date)"
