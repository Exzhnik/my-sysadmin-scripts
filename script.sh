#!/usr/bin/env bash

INTERVAL=5

while true; do
    {
        echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---"
        free -h
        df -h
        uptime
        echo
    } >> monitor.log

    sleep "$INTERVAL"
done
