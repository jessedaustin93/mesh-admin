#!/bin/bash

LOG=~/mesh-admin/update-all.log

while read NODE; do
    echo "Updating node: $NODE" | tee -a $LOG
    ssh $NODE 'sudo apt update && sudo apt upgrade -y' 2>&1 | tee -a $LOG
done < ~/mesh-admin/nodelist.txt

echo "All nodes updated." | tee -a $LOG
