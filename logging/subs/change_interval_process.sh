#!/bin/bash
read -p "New interval: (* * * * *) " interval_process
if [ !-z $interval_process ]; then
    bash remove_cronjob_performance.sh
    bash setup_cronjob_performance.sh $interval_process
    echo "Changed log interval"
else    
    echo "No valid input. Log interval is not changed."
fi