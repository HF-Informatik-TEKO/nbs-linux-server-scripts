#! /bin/bash
# Create log folder
sudo mkdir /var/log/performance/

# Copy script
sudo cp subs/performance_logging.sh /usr/local/sbin/performance_logging.sh

# Grant execution permissions
sudo chmod +x /usr/local/sbin/performance_logging.sh

# Setup Cronjob
echo "* * * * * root /usr/local/sbin/performance_logging.sh" >> /etc/cron.d/performance_logging
