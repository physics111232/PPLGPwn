#!/bin/bash

# Specify the folder where the scripts are located
folder="/media/internal/downloads/test-message"

# Get the process IDs of all running scripts in the specified folder
pids=$(pgrep -f "$folder")

# Kill each process
for pid in $pids
do
    kill -9 $pid
done

echo "All processes in $folder have been killed."
