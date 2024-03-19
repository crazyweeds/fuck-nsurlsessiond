#!/bin/bash

while true; do
    if pgrep -x "nsurlsessiond" > /dev/null; then
        echo "Found nsurlsessiond process, killing..."
        pkill -9 nsurlsessiond
    else
        echo "nsurlsessiond process not found."
    fi
    sleep 1
done
