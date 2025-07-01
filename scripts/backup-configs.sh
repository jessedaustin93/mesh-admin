#!/bin/bash

DATE=$(date +"%Y%m%d_%H%M%S")
tar czvf ~/mesh-backup_${DATE}.tar.gz ~/mesh-admin
echo "Backup saved as ~/mesh-backup_${DATE}.tar.gz"
