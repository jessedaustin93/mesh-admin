#!/bin/bash

LOG=~/mesh-admin/update-all.log

while read NODE; do
    NODE=$(echo "$NODE" | cut -d'#' -f1 | xargs)
    [ -z "$NODE" ] && continue
    # your code...
done < ~/mesh-admin/nodelist.txt

echo "All nodes updated." | tee -a $LOG
