#!/bin/bash
interval=$1

echo "$interval root /usr/local/sbin/performance_logging.sh" | sudo tee /etc/cron.d/performance_logging > /dev/null
