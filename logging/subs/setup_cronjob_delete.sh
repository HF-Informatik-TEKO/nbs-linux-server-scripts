#!/bin/bash
interval=$1
delete_days=$2

# Create/Overwrite cronjob
echo "$interval root /usr/local/sbin/log_delete.sh" >> /etc/cron.d/log_delete $delete_days > /dev/null