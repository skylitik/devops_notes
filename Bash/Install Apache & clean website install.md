```
```#!/bin/bash

#Variable Declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
#URL='https://www.tooplate.com/zip-templates/2137_barista_cafe.zip'
#ART_NAME='2137_barista_cafe'
TEMDIR="/tmp/webfiles"

#Installing Dependencies

sudo yum install $PACKAGE -y > /dev/null

sudo systemctl start $SVC
sudo systemctl enable $SVC

sudo mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $1 > /dev/null
unzip $2.zip > /dev/null
sudo cp -r $2/* /var/www/html/
echo

#Bounce Service
echo "##############################################################"
echo "Restarting HTTPD service"
echo "##############################################################"
systemctl restart $SVC
echo

#Clean Up
echo "##############################################################"
echo "Removing Temporary Files"
echo "##############################################################"
rm -rf $TEMPDIR
echo

sudo systemctl status $SVC
ls /var/www/html/
uptime
echo "##############################################################"
echo "##############################################################"

```
