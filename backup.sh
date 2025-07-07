#!/bin/bash

DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR=~/devops-journey/backups
FILENAME="backup_$DATE.txt"

mkdir -p "$BACKUP_DIR"
echo "Резервная копия от $DATE" > "$BACKUP_DIR/$FILENAME"
