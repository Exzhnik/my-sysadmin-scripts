#!/usr/bin/env bash

{
    echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---"
    free -h
    df -h
    uptime
    echo
} >> monitor.log
