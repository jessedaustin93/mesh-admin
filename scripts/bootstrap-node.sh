#!/bin/bash

NODE="$1"
USER="jesse"

if [ -z "$NODE" ]; then
    echo "Usage: ./bootstrap-node.sh <user@ip>"
    exit 1
fi

ssh $NODE 'sudo apt update && sudo apt upgrade -y && sudo apt install -y curl git ufw python3 python3-pip tmux'
ssh $NODE 'sudo ufw allow ssh && sudo ufw enable'
scp ~/mesh-admin/nodelist.txt $NODE:~/nodelist.txt

echo "Bootstrap complete for $NODE"
