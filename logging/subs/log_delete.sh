#! /bin/bash
delete_days=$1

# Calculate the date X days ago
days_ago=$(date -d "$delete_days days ago" +%Y-%m-%d)

# Delete files older than X days
sudo find "/var/log/performance/" -type f -name "*.log" ! -newermt "$days_ago" -delete