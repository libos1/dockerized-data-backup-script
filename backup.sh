#!/bin/bash
# 1. Define backup directory and timestamp
BACKUP_DIR="/data/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FILENAME="archive_$TIMESTAMP.tar.gz"

# 2. NEW STEP: Run the Python data transformation script
echo "Starting data validation script..."
python transform_data.py
echo "Data validation complete. Continuing to archive."

# 3. Create the backup using tar (Linux compression utility)
# This archives both the source data (/app/source_data) and the report (/app/transformation_report.txt)
tar -czf "$BACKUP_DIR/$FILENAME" /app/source_data /app/transformation_report.txt

echo "Backup complete: $FILENAME created in $BACKUP_DIR"
