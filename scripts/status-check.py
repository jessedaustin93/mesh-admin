#!/usr/bin/env python3
import subprocess

with open('/home/jesse/mesh-admin/nodelist.txt') as f:
    nodes = [line.strip() for line in f if line.strip()]

for node in nodes:
    # extract the host/IP (assumes "user@host" format)
    if '@' in node:
        host = node.split('@')[1]
    else:
        host = node
    res = subprocess.run(['ping', '-c', '1', host], stdout=subprocess.DEVNULL)
    status = "✅ Online" if res.returncode == 0 else "❌ Offline"
    print(f"Node {host}: {status}")

