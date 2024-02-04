#!/bin/bash
echo "What do you want to change about logging?"
echo "1. See logs"
echo "2. Change log interval"
echo "4. Change delete interval"
read -p "Flag: " is_process

# Abort on null or no number
if [[ -z $is_process || !$is_process =~ ^[0-9]+$ ]]; then
    echo "No number input. Setup cancelled."
    exit 0;
fi
# View logs
if (($is_process & 1)); then
    bash subs/change_view_logs.sh
fi
# Change 
if (($is_process & 2)); then
    bash subs/change_interval_performance.sh
fi

if (($is_process & 4)); then
    bash subs/change_interval_delete.sh
fi

echo "Setup Finished"