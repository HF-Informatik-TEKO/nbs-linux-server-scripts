#!/bin/bash
# Install php
read -p "Do you really want to setup performance logging? (y|n): " is_process
if [[ $is_process == null || $is_process != "y" ]]; then
	exit 0
fi

read -p "Delete old log files after X days. X: " delete_days

bash subs/setup_log_delete.sh delete_days
bash subs/setup_performance.sh

echo "Setup Finished" 