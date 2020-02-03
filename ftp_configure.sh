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

# TODO: check if rules should be set before or after firewall restart
# TODO: change ftp ports from 20,21 to allwed
# add rules for used ports 
sudo ufw allow 20/tcp, 21/tcp, 22, 80, 1024:1048

# restart firewall
sudo ufw disable
sudo ufw enable

# add rules for used ports 
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 1024:1048

# check service status
sudo ufw status
