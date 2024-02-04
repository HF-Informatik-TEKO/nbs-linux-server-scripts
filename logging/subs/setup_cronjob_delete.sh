#!/bin/bash
interval=$1
delete_days=$2

echo "$interval root /usr/local/sbin/log_delete.sh" >> /etc/cron.d/log_delete $delete_days > /dev/null