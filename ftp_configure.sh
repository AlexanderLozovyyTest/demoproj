# NOTE: change properties in /etc/vsftpd.conf file
# anonymous_enable=NO
# local_enable=YES
# write_enable=YES
# chroot_local_user=YES

# adding user
sudo adduser testuser

# TODO: not use sudo for testuser
# give user sudo privileges
sudo adduser testuser sudo

# create user folder
sudo mkdir ~/testuser
sudo mkdir ~/testuser/files

# change dir owner to root
sudo chown root:root /home/testuser

# restart service in selected folder
sudo service vsftpd restart

# firewall config
sudo ufw enable
sudo ufw allow 20/tcp, 21/tcp, 22, 80, 1024:1048, 8080, OpenSSH
sudo ufw reload
