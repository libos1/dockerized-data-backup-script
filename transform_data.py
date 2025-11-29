# transform_data.py

import os
from datetime import datetime

# Define the source folder (where data is expected to be mounted)
DATA_SOURCE = '/app/source_data'
REPORT_FILE = '/app/transformation_report.txt'
log = []

# --- Data Transformation/Validation Logic ---

# Check if the data folder exists
if not os.path.exists(DATA_SOURCE):
    log.append(f"[{datetime.now()}] ERROR: Data source {DATA_SOURCE} not found. Skipping transformation.")
else:
    # 1. Simulate finding data files (e.g., a CSV or PISA report)
    data_files = [f for f in os.listdir(DATA_SOURCE) if f.endswith('.csv') or f.endswith('.txt')]

    log.append(f"[{datetime.now()}] INFO: Found {len(data_files)} files for processing.")

    # 2. Simulate a simple data validation check
    if len(data_files) == 0:
        log.append(f"[{datetime.now()}] WARNING: No data files found. Proceeding with backup.")
    else:
        log.append(f"[{datetime.now()}] SUCCESS: Data transformation/validation complete.")


# --- Final Output ---

# Write the report to a file (which will be included in the backup)
with open(REPORT_FILE, 'w') as f:
    f.write('\n'.join(log))

print(f"Data validation report created: {REPORT_FILE}")
