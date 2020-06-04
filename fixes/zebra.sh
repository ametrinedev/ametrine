echo "deb https://getzbra.com/repo /" | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt install xyz.willy.zebra
uicache
launchctl reboot userspace