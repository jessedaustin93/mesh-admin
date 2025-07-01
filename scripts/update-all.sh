#!/bin/bash

while read NODE; do
    echo "Updating node: $NODE"
    ssh $NODE 'sudo apt update && sudo apt upgrade -y'
done < ~/mesh-admin/nodelist.txt

echo "All nodes updated."
