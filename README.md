# systemd-sitm
Systemd Service for informing some host the dhcp ip for ssh usage
#### you can use it as:
```
  sudo git clone this-repo (using sudo to escape from chown)
  sudo cd system-sitm
  sudo mv .dummy.sh /root
  sudo mv .script.sh /root
  sudo vim /root/.script.sh #put your static ip and username and password here
  sudo mv tellip.service /etc/systemd/system/
  sudo chmod +x /root/.script
  sudo systemctl daemon-reload
  sudo systemctl enable tellip
  sudo systemctl start tellip
  # now go for ssh to computer with dynamic address.
```
I know that I could write it much better using not visible passwords, without the need of doing explicit scp (from dynamic ip machine to static one), using binaries, using some kind of lock for files, or etc...

I was in a rush to complete an important research and this was the easiest way I could do this.

thank you.
