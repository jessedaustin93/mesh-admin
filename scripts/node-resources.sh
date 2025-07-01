#!/bin/bash

LOG=~/mesh-admin/node-resources.log

while read NODE; do
    echo "===== $NODE =====" | tee -a $LOG
    ssh $NODE 'echo CPU:; lscpu | grep "Model name"; echo RAM:; free -h | grep Mem; echo Disk:; df -h /; uptime' 2>&1 | tee -a $LOG
    echo "" | tee -a $LOG
done < ~/mesh-admin/nodelist.txt

echo "Resource check complete. See $LOG"
