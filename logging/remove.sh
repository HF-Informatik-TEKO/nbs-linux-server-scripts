#!/bin/bash
read -p "Do you really want to remove Logging? (y/n): " is_remove
if [[ $is_remove == null || $is_remove != "y" ]]; then
    exit 0
fi

bash subs/remove_log_delete.sh
bash subs/remove_performance.sh