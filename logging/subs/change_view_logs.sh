#!/bin/bash
if [ -d "/var/log/performance/" ]; then
    cd /var/log/performance/
    ls
else
    echo "No existing log folder. Setup logging first."
fi