# Install libusbmuxd-tools
echo "Installing libusbmuxd-tools.."
sudo apt install libusbmuxd-tools
echo "Done!"

# Download the odysseyra1n script via curl and execute
echo "Downloading latest odysseyra1n deployment script.."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/coolstar/Odyssey-bootstrap/master/procursus-deploy-linux-macos.sh)"
echo "Done!"

# Exit the script
exit 1
