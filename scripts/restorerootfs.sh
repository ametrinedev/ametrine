# Install curl
echo "Installing curl.."
apt install curl
echo "Done!"

# Download snappy
echo "Downloading snappy binary.."
curl -sSL http://joshtv.net/snappy -o /usr/bin/snappy
echo "Done!"

# Fix snappy permissions
echo "Fixing permissions.."
chmod 0755 /usr/bin/snappy
echo "Done!"

# Run rootFS restore
echo "Restoring rootFS.."
snappy -f / -r orig-fs -x
echo "Done!"

# Reboot device
echo "Rebooting.."
reboot

# Exit the script, even though we rebooted..?
exit 1
