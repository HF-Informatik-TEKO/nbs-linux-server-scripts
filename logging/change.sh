#!/bin/bash
echo "What do you want to change about logging?"
echo "1. see logs"
echo "2. change log interval"
echo "3. change delete interval"
read -p "Flag: " is_process

# Abort on null or no number
if [[ -z $is_process || !$is_process =~ ^[0-9]+$ ]]; then
    echo "No number input. Setup cancelled."
    exit 0;
fi

if (($is_process & 1)); then
	cd /var/log/performance/
    ls
fi

if (($is_process & 2)); then
    read -p "New interval: (* * * * *) " interval_process
    if [ !-z $interval_process ]; then
    	bash remove_cronjob_performance.sh
        bash setup_cronjob_performance.sh $interval_process
    fi
fi

if (($is_process & 4)); then
    read -p "New interval: (* * * * *) " interval_delete
    read -p "New delete logs after X days: (30) " interval_days
    if [[[ !-z $interval_delete && !-z $interval_days && $interval_days =~ ^[0-9]+$ ]]]; then
    	bash remove_cronjob_delete.sh
        bash setup_cronjob_delete.sh $interval_delete $interval_days
    fi
fi

echo "Setup Finished"