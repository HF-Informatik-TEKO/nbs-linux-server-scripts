#! /bin/bash
# Get CPU usage percentage
cpu_usage=$(/usr/bin/top -bn1 | grep "Cpu(s)" | awk '{print $2}')

# Get RAM usage percentage
ram_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

# Get current timestamp
timestamp=$(/bin/date +"%Y-%m-%dT%H:%M:%S")
date=$(/bin/date +"%Y-%m-%d")
logline=$"$timestamp CPU: $cpu_usage% RAM: $ram_usage%"

# Append the statistics to the log file
if (( $(echo "$cpu_usage >= 80 || $ram_usage >= 80" | /usr/bin/bc -l) )); then
    echo $logline >> /var/log/performance/01-Crit-$date.log
fi
echo $logline >> /var/log/performance/02-All-$date.log
