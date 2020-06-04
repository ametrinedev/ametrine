#/bin/bash
apt install curl
echo "Installing zebra"
curl -sSL https://github.com/wstyres/Zebra/releases/download/v1.1.10/xyz.willy.zebra_1.1.10_iphoneos-arm.deb -o zebra.deb
dpkg -i zebra.deb
rm zebra.deb
echo "Done!"
echo "Run uicache if you don't see zebra still."
exit 1
