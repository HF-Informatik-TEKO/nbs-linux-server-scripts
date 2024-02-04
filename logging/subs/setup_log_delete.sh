#!/bin/bash
$interval_delete=$1
delete_days=$2

# Copy script
sudo cp subs/log_delete.sh /usr/local/sbin/log_delete.sh

# Grant execution permissions
sudo chmod +x /usr/local/sbin/log_delete.sh

# Setup Cronjob at 02:00:00 every day
bash subs/setup_cronjob_delete.sh "$interval_delete" $delete_days