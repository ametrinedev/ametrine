#!/bin/bash
if [ "$EUID" -ne 0 ]; then
echo Please run this script as root.
else
echo "Welcome to @semicoloncola's Sileo Removal Utility."
echo "Downloading necessary debs."
wget https://apt.bingner.com/debs/1443.00/libapt-pkg5.0_1.8.2-1_iphoneos-arm.deb
wget https://apt.bingner.com/debs/1443.00/libapt_1.8.2-1_iphoneos-arm.deb
wget https://apt.bingner.com/debs/1443.00/apt-key_1.8.2-1_iphoneos-arm.deb
wget https://apt.bingner.com/debs/1443.00/apt_1.8.2-3_iphoneos-arm.deb
wget https://apt.bingner.com/debs/1443.00/cydia_1.1.32~b23_iphoneos-arm.deb
wget https://apt.bingner.com/debs/1443.00/cydia-lproj_1.1.32~b1_iphoneos-arm.deb
echo "Done. Installing necessary debs."
dpkg -i --force-all libapt_1.8.2-1_iphoneos-arm.deb
dpkg -i --force-all libapt-pkg5.0_1.8.2-1_iphoneos-arm.deb
dpkg -i --force-all apt-key_1.8.2-1_iphoneos-arm.deb
dpkg -i --force-all apt_1.8.2-3_iphoneos-arm.deb
dpkg -i --force-all cydia_1.1.32~b23_iphoneos-arm.deb
dpkg -i --force-all cydia-lproj_1.1.32~b1_iphoneos-arm.deb
echo "Done. Removing Sileo."
dpkg -r org.coolstar.sileo
echo "Done. Run any necessary upgrades in Cydia."
uicache -a
fi