# Install curl, if we don't have it already
echo "Installing curl.."
apt install curl
echo "Done!"

# Download and install Zebra using curl
echo "Installing Zebra.."
curl -sSL https://github.com/wstyres/Zebra/releases/download/v1.1.10/xyz.willy.zebra_1.1.10_iphoneos-arm.deb -o zebra.deb
dpkg -i zebra.deb
rm zebra.deb
echo "Done!"

# Run uicache to make sure it shows up on the homescreen
echo "Running uicache.."
uicache
echo "Done!"

# Exit the script
exit 1
