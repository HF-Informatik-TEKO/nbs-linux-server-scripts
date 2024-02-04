#! /bin/bash
# Remove script
sudo rm /usr/local/sbin/log_delete.sh

# Remove Cronjob
bash subs/remove_cronjob_delete.sh
# sudo rm /etc/cron.d/log_delete