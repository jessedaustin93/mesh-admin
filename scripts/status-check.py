#!/usr/bin/env python3
import subprocess

nodes = ["192.168.1.2", "192.168.1.3", "192.168.1.4"]  # Update with actual nodes

for node in nodes:
    res = subprocess.run(['ping', '-c', '1', node], stdout=subprocess.DEVNULL)
    status = "✅ Online" if res.returncode == 0 else "❌ Offline"
    print(f"Node {node}: {status}")
