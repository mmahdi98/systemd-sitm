# systemd-sitm
Systemd Service for informing some host the dhcp ip for ssh usage
#### you can use it as:
sudo git clone this-repo (using sudo to escape from chown)
sudo cd system-sitm
sudo mv .dummy.sh /root
sudo mv .script.sh /root
sudo mv tellip.service /etc/systemd/system/
sudo chmod +x /root/.script
sudo systemctl daemon-reload
sudo systemctl enable tellip
sudo systemctl start tellip
\# now go for ssh.
