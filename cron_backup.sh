DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR=~/devops-journey/cron_backups
mkdir -p "$BACKUP_DIR"
echo "Автоматический бэкап от $DATE" > "$BACKUP_DIR/backup_$DATE.txt"
