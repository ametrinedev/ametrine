# Zebra installer script by Ametrine. Find us at https://ametrine.dev/.
# Check if user is root
if [ "$EUID" -ne 0 ]; then
echo "Script not running as root, abort."
echo "Please run the script as root and try again."
exit
else

# Install curl if we don't have it already
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
uicache -a
echo "Done!"

