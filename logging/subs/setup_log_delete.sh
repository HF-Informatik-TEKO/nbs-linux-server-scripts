#!/bin/bash
delete_days=$1

# Copy script
sudo cp subs/log_delete.sh /usr/local/sbin/log_delete.sh

# Grant execution permissions
sudo chmod +x /usr/local/sbin/log_delete.sh

# Setup Cronjob at 02:00:00 every day
echo "* 2 * * * root /usr/local/sbin/log_delete.sh" >> /etc/cron.d/log_delete $delete_days > /dev/null
