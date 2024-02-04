#! /bin/bash
log_interval=$1

# Create log folder
sudo mkdir -p /var/log/performance/

# Copy script
sudo cp subs/performance_logging.sh /usr/local/sbin/performance_logging.sh

# Grant execution permissions
sudo chmod +x /usr/local/sbin/performance_logging.sh

# Setup Cronjob
bash subs/setup_cronjob_performance.sh "$log_interval"