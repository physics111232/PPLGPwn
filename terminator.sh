#!/bin/bash

# Specify the full paths to the scripts
script1="/media/internal/downloads/test-message/test1.sh"
script2="/media/internal/downloads/test-message/test2.sh"

# Find and kill all processes related to script1
pids1=$(ps aux | grep "$script1" | grep -v grep | awk '{print $2}')
for pid in $pids1; do
    kill -9 $pid
done

# Find and kill all processes related to script2
pids2=$(ps aux | grep "$script2" | grep -v grep | awk '{print $2}')
for pid in $pids2; do
    kill -9 $pid
done

echo "All processes for $script1 and $script2 have been killed."
