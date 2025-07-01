#!/bin/bash

tmux new-session -d -s mesh
tmux send-keys -t mesh "cd ~/mesh-admin/scripts; ./status-check.py" C-m
tmux split-window -h -t mesh
tmux send-keys -t mesh "cd ~/mesh-admin/scripts; ./update-all.sh" C-m
tmux split-window -v -t mesh:0.0
tmux send-keys -t mesh "cd ~/mesh-admin/scripts; ./node-resources.sh" C-m
tmux attach -t mesh
