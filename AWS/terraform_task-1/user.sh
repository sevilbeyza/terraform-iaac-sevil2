#note those are some user daya for web , for the solving issue we try to use it 

#!/bin/bash
sudo yum install httpd -y
sudo systemctl restart httpd
sudo systemctl enable httpd
sudo yum install epel-release -y
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
sudo yum-config-manager --enable remi-php72
sudo yum install php -y
sudo systemctl restart httpd

sudo getenforce
sudo vi /etc/sysconfig/selinux

#make sure all file belongs Apache
sudo chown apache:apache /var/www/html
sudo systemctl restart httpd


# sudo apt-get update
# sudo apt-get install -y apache2
# sudo systemctl start apache2
# sudo systemctl enable apache2
# echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html


