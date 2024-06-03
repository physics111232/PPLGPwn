#!/bin/bash

# Specify the folder where the scripts are located
folder="/media/internal/downloads/test-message"

# Find all running scripts in the specified folder
running_scripts=$(ps aux | grep "$folder" | grep -v grep | awk '{print $2}')

# Kill each running script
for script_id in $running_scripts
do
    kill -9 $script_id
done

echo "All scripts in $folder have been killed."
echo "All running scripts in $SCRIPT_FOLDER have been terminated."
