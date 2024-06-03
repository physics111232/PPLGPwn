notify() {
    local message=$1
    luna-send -f -n 1 luna://com.webos.notification/createToast "{\"message\": \"$message\"}"
}

# Specify the folder containing the scripts
SCRIPT_FOLDER="/media/internal/downloads/PPLGPwn-main"

# Check if ps command is available
if ! command -v ps >/dev/null 2>&1; then
    notify "<b>Error</b><br/>ps command not found."
    exit 1
fi

# Check if grep command is available
if ! command -v grep >/dev/null 2>&1; then
    notify "<b>Error</b><br/>grep command not found."
    exit 1
fi

# Check if awk command is available
if ! command -v awk >/dev/null 2>&1; then
    notify "<b>Error</b><br/>awk command not found."
    exit 1
fi

# Check if kill command is available
if ! command -v kill >/dev/null 2>&1; then
    notify "<b>Error</b><br/>kill command not found."
    exit 1
fi

# Find the PIDs of the running scripts in the specified folder
PIDS=$(ps aux | grep -E "$SCRIPT_FOLDER" | grep -v grep | grep -v "$0" | awk '{print $2}')

# Check if there are any PIDs found
if [ -z "$PIDS" ]; then
    notify "<b>PPLGPwn!</b><br/>No running scripts found in $SCRIPT_FOLDER."
    exit 0
fi

# Print the PIDs for debugging purposes and send a notification
notify "<b>PPLGPwn!</b><br/>Found the following PIDs of running scripts in $SCRIPT_FOLDER: $PIDS"
echo "Found the following PIDs of running scripts in $SCRIPT_FOLDER: $PIDS"

# Kill each PID found and send a notification
for PID in $PIDS; do
    notify "<b>PPLGPwn!</b><br/>Killing script with PID: $PID"
    echo "Killing PID: $PID"
    kill $PID
done

notify "<b>PPLGPwn!</b><br/>All running scripts in $SCRIPT_FOLDER have been terminated."
echo "All running scripts in $SCRIPT_FOLDER have been terminated."
