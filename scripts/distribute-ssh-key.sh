#!/bin/bash

NODE_IP="$1"
NODE_USER="jesse"  # Change if your username is different

if [ -z "$NODE_IP" ]; then
    echo "Usage: ./distribute-ssh-key.sh <node-ip>"
    exit 1
fi

ssh-copy-id ${NODE_USER}@${NODE_IP}
echo "SSH key distributed to ${NODE_USER}@${NODE_IP}"
