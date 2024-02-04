#!/bin/bash
interval=$1
delete_days=$2

# Create/Overwrite cronjob
echo "$interval root /usr/local/sbin/log_delete.sh $delete_days" | sudo tee /etc/cron.d/log_delete > /dev/null