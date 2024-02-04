#!/bin/bash
# Install php
read -p "Do you really want to setup performance logging? (y|n): " is_process
if [[ $is_process == null || $is_process != "y" ]]; then
	exit 0
fi

# Setup performance logs at every minute
bash subs/setup_performance.sh "* * * * *"
# Setup log delete at 02:00 and keep logs for 30 days
bash subs/setup_log_delete.sh "* 2 * * *" 30

echo "Setup Finished" 