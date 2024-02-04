#!/bin/bash

read -p "New process interval (* * * * *): " interval_process

# Check on null input
if [[ ! -z "$interval_process" ]]; then
    # Change cronjob
    bash subs/setup_cronjob_performance.sh "$interval_process"
    echo "Changed log interval"
else    
    echo "No valid input. Log interval is not changed."
fi