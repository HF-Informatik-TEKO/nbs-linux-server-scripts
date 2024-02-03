#! /bin/bash
# Remove log folder
sudo rm -rf /var/log/performance/

# Remove script
sudo rm /usr/local/sbin/performance_logging.sh

# Remove Cronjob
sudo rm /etc/cron.d/performance_logging