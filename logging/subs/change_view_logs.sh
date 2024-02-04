#!/bin/bash
# Check existence of log folder
if [ -d "/var/log/performance/" ]; then
    # Navigate an show content of log folder
    cd /var/log/performance/
    echo "All available logs:"
    ls
else
    echo "No existing log folder. Setup logging first."
fi