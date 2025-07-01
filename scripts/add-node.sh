#!/bin/bash

NODE_IP="$1"
NODE_USER="jesse"  # Change as needed

if [ -z "$NODE_IP" ]; then
    echo "Usage: ./add-node.sh <node-ip>"
    exit 1
fi

# Copy SSH key for passwordless login
ssh-copy-id ${NODE_USER}@${NODE_IP}

# Basic setup commands
ssh ${NODE_USER}@${NODE_IP} 'sudo apt update && sudo apt upgrade -y && sudo apt install -y curl git ufw'
ssh ${NODE_USER}@${NODE_IP} 'sudo ufw allow ssh && sudo ufw enable'

echo "Node $NODE_IP added and configured."
