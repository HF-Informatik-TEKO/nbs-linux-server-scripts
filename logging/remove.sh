#!/bin/bash
read -p "Do you really want to remove Logging? (y/n): " is_remove
if [[ $is_remove == null || $is_remove != "y" ]]; then
    exit 0
fi

# Remove performance log
bash subs/remove_performance.sh

# Remove log delete
bash subs/remove_log_delete.sh

echo "Remove Finished."