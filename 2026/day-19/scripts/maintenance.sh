#!/bin/bash

LOG_FILE="/var/log/maintenance.log"

echo "============================" >> "$LOG_FILE"
echo "$(date): Maintenance started" >> "$LOG_FILE"

echo "$(date): Running log rotation..." >> "$LOG_FILE"
/home/mujakkir/90DaysOfDevOps/2026/day-19/scripts/log_rotate.sh /var/log/myapp >> "$LOG_FILE" 2>&1

echo "$(date): Running backup..." >> "$LOG_FILE"
/home/mujakkir/90DaysOfDevOps/2026/day-19/scripts/backup.sh /home/mujakkir/scripts /home/mujakkir/demo >> "$LOG_FILE" 2>&1

echo "$(date): Maintenance completed" >> "$LOG_FILE"
echo "============================" >> "$LOG_FILE"
