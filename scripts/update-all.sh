#!/bin/bash

NODE_LIST=("192.168.1.2" "192.168.1.3" "192.168.1.4") # Edit with actual node IPs
NODE_USER="jesse"

for node in "${NODE_LIST[@]}"; do
    echo "Updating node: $node"
    ssh ${NODE_USER}@${node} 'sudo apt update && sudo apt upgrade -y'
done

echo "All nodes updated."
