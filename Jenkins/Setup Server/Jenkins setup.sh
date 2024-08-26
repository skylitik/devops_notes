#!/bin/bash
apt update -y
apt install openjdk-11-jdk -y
#curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
 # /usr/share/keyrings/jenkins-keyring.asc > /dev/null
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
 https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update
sudo apt-get install jenkins -y
systemctl status jenkins.service

JDK
check path for JDK -> /usr/lib/jvm/