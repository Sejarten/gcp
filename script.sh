#!/bin/bash

# Ask the user for required inputs
read -rp "Enter your BUCKET name: " BUCKET
read -rp "Enter your INSTANCE name: " INSTANCE
read -rp "Enter your VPC name: " VPC

# Export all variables
export BUCKET
export INSTANCE
export VPC

# Confirm what was set
echo "✅ Environment variables set:"
echo "   BUCKET   = $BUCKET"
echo "   INSTANCE = $INSTANCE"
echo "   VPC      = $VPC"

# GitHub raw link to the script
SCRIPT_URL="https://raw.githubusercontent.com/Sejarten/gcp/refs/heads/main/lab.sh"
SCRIPT_NAME="lab.sh"

# Download the script
echo "📥 Downloading script from Ashwini Engal Thalaivi"
wget -q "$SCRIPT_URL" -O "$SCRIPT_NAME"

if [ $? -ne 0 ]; then
    echo "❌ Failed to download the script."
    exit 1
fi

# Make it executable
chmod +x "$SCRIPT_NAME"
echo "✅ Script is now executable."

# Run the script (inherits environment variables)
echo "🚀 Running the script..."
./"$SCRIPT_NAME"
