#!/bin/bash
SCRIPT_URL="https://github.com/Sejarten/gcp/blob/4db11daf1508ef843393e71230dc90512f0e74cc/lab.sh"

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
