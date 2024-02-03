#! /bin/bash
# Get CUP usage percentage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

# Get RAM usage percentage
ram_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

# Get current timestamp
timestamp=$(date +"%Y-%m-%dT%H:%M:%S")
date=$(date +"%Y-%m-%d")

# Append the statistics to the log file
echo "$timestamp CPU: $cpu_usage% RAM: $ram_usage%" >> /home/beat/scripts/logs/performance_$date.log
echo "$timestamp CPU: $cpu_usage% RAM: $ram_usage%"