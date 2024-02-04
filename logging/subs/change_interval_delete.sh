#!/bin/bash
read -p "New delete interval: (* * * * *) " interval_delete
read -p "New delete logs after X days: (30) " interval_days

# Check on null input and interval in number format
if [[ ! -z "$interval_delete" && $interval_days =~ ^[0-9]+$ ]]; then
    # Change cronjob
    bash subs/setup_cronjob_delete.sh "$interval_delete" $interval_days
    echo "Changed log delete interval"
else
    echo "No valid input. Log delete interval is not changed."
fi