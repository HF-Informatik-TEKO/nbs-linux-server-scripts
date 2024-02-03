#! /bin/bash
delete_days=$1

log_dir="/var/log/performance/"

# Calculate the date X days ago
days_ago=$(date -d "$delete_days days ago" +%Y-%m-%d)

# Delete files older than X days
find "$log_dir" -type f -name "*.log" ! -newermt "$days_ago" -delete
