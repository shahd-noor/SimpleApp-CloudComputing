#!/bin/bash


apache=$(dpkg --get-selections | grep apache)


sudo git clone https://github.com/mkassaf/SimpleApacheApp.git;

function apache() { echo "apache status: $apache"
            if [ ! -n "$apache" ]
            then
	echo "$0 - Error \$var not set or NULL"
            else
	echo "$(apache2 -v)"
	while [ $(apache2 -v) < $(2.0.0) ]
            do 

sudo yum check-update
sudo yum update 

sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd | grep Active

sudo yum install firewalld
sudo systemctl start firewalld
sudo systemctl status firewalld | grep Active

sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https

sudo firewall-cmd --reload


           done
           
           fi
            } 


apache
cd SimpleApacheApp 
 mv SimpleApacheApp/App/ ~/var/www/SimpleApp 
 mv simpleApp.conf  ~/etc/apache2/sites-available 
 
printf "install_{current date}.log" > $log 
date >> $log

