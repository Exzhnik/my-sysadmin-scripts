#!/usr/bin/env bash

INTERVAL=5

if ! true >> monitor.log; then
    echo "Ошибка: невозможно создать или открыть monitor.log для записи." >&2
    exit 1
fi

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
