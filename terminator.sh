#!/bin/bash

# Specify the full paths to the scripts
script1="/media/internal/downloads/test-message/test1.sh"
script2="/media/internal/downloads/test-message/test2.sh"

# Kill all processes related to script1
pkill -f "$script1"

# Kill all processes related to script2
pkill -f "$script2"

echo "All processes for $script1 and $script2 have been killed."
