#!/bin/bash

LOG=~/mesh-admin/node-resources.log

while read NODE; do
    NODE=$(echo "$NODE" | cut -d'#' -f1 | xargs)
    [ -z "$NODE" ] && continue
    # your code...
done < ~/mesh-admin/nodelist.txt

echo "Resource check complete. See $LOG"
