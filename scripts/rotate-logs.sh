#!/bin/bash

LOGDIR=~/mesh-admin
MAXSIZE=1048576 # 1MB in bytes

for logfile in $LOGDIR/*.log; do
    if [ -f "$logfile" ]; then
        size=$(stat -c%s "$logfile")
        if [ $size -ge $MAXSIZE ]; then
            mv "$logfile" "$logfile.old"
            touch "$logfile"
            echo "[$(date)] Log rotated: $logfile" >> "$logfile"
        fi
    fi
done
