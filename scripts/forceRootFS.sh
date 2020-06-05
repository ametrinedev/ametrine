# We in quarantine but we out here!!!
# Make with love by Dudeamax99 and quiprr
# This should be executed in an SSH/terminal shell!
apt install curl
curl -sSL http://joshtv.net/snappy -o /usr/bin/snappy
chmod 0755 /usr/bin/snappy
snappy -f / -r orig-fs -x 
reboot
# Do I need this exit at the end????? I'll never know.
exit 1