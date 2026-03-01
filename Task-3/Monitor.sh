#!/bin/bash

# Ensure PATH is set for cron environment
PATH=/usr/bin:/bin

CONTAINER_NAME="myweb"

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

STATS=$(/usr/bin/docker stats --no-stream --format "{{.CPUPerc}} {{.MemUsage}}" $CONTAINER_NAME)

echo "$TIMESTAMP - $STATS" >> /opt/container-monitor/logs/monitor.log
