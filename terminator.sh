#!/bin/bash

# Define the script paths
SCRIPT1="/media/internal/downloads/test-message/test1.sh"
SCRIPT2="/media/internal/downloads/test-message/test2.sh"

# Get the PIDs of the running scripts
PIDS=$(ps -ef | grep -E "$SCRIPT1|$SCRIPT2" | grep -v grep | awk '{print $2}')

# Check if any PIDs were found
if [ -z "$PIDS" ]; then
    echo "No matching scripts are currently running."
else
    # Kill the processes
    echo "Killing the following PIDs: $PIDS"
    for PID in $PIDS; do
        kill -9 $PID
        echo "Killed process $PID"
    done
fi
