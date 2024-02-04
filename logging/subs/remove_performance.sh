#! /bin/bash
# Remove log folder
read -p "Do you want to remove the logs? (y/n): " is_remove
if [[ $is_remove == null || $is_remove != "y" ]]; then
    sudo rm -rf /var/log/performance/
fi

# Remove script
sudo rm /usr/local/sbin/performance_logging.sh

# Remove Cronjob
bash subs/remove_cronjob_performance.sh
# sudo rm /etc/cron.d/performance_logging