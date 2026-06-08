#!/bin/bash

BACKUP_DIR=$"HOME/backups"

mkdir -p $BACKUP_DIR

tar -czf $BACKUP_DIR/home-backup.tar.gz $HOME/cloud-lab

echo "Backup completed successfully."
