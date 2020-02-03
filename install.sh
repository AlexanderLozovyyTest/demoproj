apt update

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

apt -y install php nginx mysql-server nodejs vsftpd default-jre default-jdk jenkins
# TODO: make silent install (no confirm request)
npm install @angular/cli -g

systemctl enable jenkins
systemctl start jenkins
