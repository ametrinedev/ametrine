#!/bin/bash
# Force Restore RootFS script by Ametrine. Find us at https://ametrine.dev/.

# Check if user is root
if [ "$EUID" -ne 0 ]; then
echo "Script not running as root, abort."
echo "Please run the script as root and try again."
exit
else

# Confirm that user needs to run the script
echo "WARNING: This script is experimental, unsafe, and should be used with caution."
echo "If you haven't tried Restoring RootFS thru either the unc0ver app or checkra1n loader, please do so now."
echo "If this didn't work, try simple steps like rejailbreaking or rebooting before running this."
read -p "Press enter to confirm you'd like to run this script."

# Install curl
echo "Installing curl..."
apt install curl
echo "Done!"

# Download snappy binary
echo "Downloading snappy binary..."
curl -sSL http://joshtv.net/snappy -o /usr/bin/snappy
echo "Done!"

# Edit snappy permissions
echo "Editing permissions..."
chmod 0755 /usr/bin/snappy
echo "Done!"

# Run RootFS restore
echo "Restoring RootFS..."
snappy -f / -r orig-fs -x
echo "Done!"

# Reboot device
echo "Rebooting..."
reboot

# Exit the script, even though we rebooted..? (Really not necessary but whatever)
exit 1
fi