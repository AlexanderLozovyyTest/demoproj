apt update

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

apt -y install php nginx mysql-server nodejs vsftpd
# TODO: make silent install (no confirm request)
npm install @angular/cli -g
