#!/bin/bash
# Check existence of log folder
if [ -d "/var/log/performance/" ]; then
    # Navigate an show content of log folder
    echo "All available logs: at /var/log/performance/"
    ls /var/log/performance/
else
    echo "No existing log folder. Setup logging first."
fi