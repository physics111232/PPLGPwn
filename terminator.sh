#!/bin/bash

# Define the script paths
SCRIPT1="/media/internal/downloads/test-message/test1.sh"
SCRIPT2="/media/internal/downloads/test-message/test2.sh"

# Function to kill processes by script name
kill_script_processes() {
    local script_path=$1
    local pids=$(pgrep -f "$script_path")
    
    if [ -z "$pids" ]; then
        echo "No matching processes found for $script_path."
    else
        echo "Killing the following PIDs for $script_path: $pids"
        for pid in $pids; do
            kill -9 $pid
            if [ $? -eq 0 ]; then
                echo "Successfully killed process $pid"
            else
                echo "Failed to kill process $pid"
            fi
        done
    fi
}

# Kill processes for each script
kill_script_processes "$SCRIPT1"
kill_script_processes "$SCRIPT2"
