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

# Verbosity on what script is about to do
clear
echo "Hello, I'm goAmetrine, and I'll be your RootFS restorer."
echo ""

# Install cURL
echo "Installing cURL with apt..."
apt install curl
if [ $? -eq 0 ]
then
    echo "Done!"
else
    echo "APT failed to install cURL. Please manually install it through a package manager. (Error code: -1)"
    exit
fi
echo ""

# Download snappy binary
echo "Downloading snappy binary..."
curl -sSL https://ametrine.dev/bin/snappy -o /bin/snappy
if [ $? -eq 0 ]
then
    echo "Done!"
else
    echo "cURL failed to download the snappy binary. Please manually download it thru Safari and place it in /bin/snappy with Filza. (Error code: -2)"
    exit
fi
echo ""

# Edit snappy permissions
echo "Editing permissions..."
chmod 755 /bin/snappy
if [ $? -eq 0 ]
then
    echo "Done!"
else
    echo "chmod failed to edit the snappy permissions. Please ensure the binary is in /bin/snappy, then try again. (Error code: -3)"
    exit
fi
echo ""

# Run RootFS restore
echo "Restoring RootFS..."
snappy -f / -r orig-fs -x
if [ $? -eq 0 ]
then
    echo "Done!"
else
    echo "Snappy failed to remount orig-fs. Please reboot and try again. (Error code: -4)"
    exit
fi
echo ""

# Reboot device
echo "Rebooting..."
reboot

# Exit the script, even though we rebooted..? (Really not necessary but whatever)
exit 1
fi