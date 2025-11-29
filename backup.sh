#!/bin/bash
# 1. Define backup directory and timestamp
BACKUP_DIR="/data/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FILENAME="archive_$TIMESTAMP.tar.gz"

# 2. Create the backup using tar (Linux compression utility)
# Note: /app/source_data is mapped to the container when run.
tar -czf "$BACKUP_DIR/$FILENAME" /app/source_data

echo "Backup complete: $FILENAME created in $BACKUP_DIR"
