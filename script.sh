#!/bin/bash
SCRIPT_URL="https://raw.githubusercontent.com/Sejarten/gcp/refs/heads/main/lab.sh"

SCRIPT_NAME=$(basename"$SCRIPT_URL")

echo "Downloading script from $SCRIPT_URL...."
wget -q "$SCRIPT_URL" -O "$SCRIPT_NAME"

if [ $? -ne 0 ]; then
   echo " Failed to download the script."
   exit 1
fi

chmod +x "./$SCRIPT_NAME"
echo "Script made executable."

echo "Execute the script....."
./"$SCRIPT_NAME"
