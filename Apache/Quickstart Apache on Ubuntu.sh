sudo apt update
sudo apt install apache2 wget unzip -y
wget https://www.tooplate.com/zip-templates/2084_zipper.zip
unzip 2084_zipper.zip
cp -r 2084_zipper/* /var/www/html/
systemctl restart apache2