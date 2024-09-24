ls -l /etc/sudoers #List of sudoers
userdel -r username #deluser
--become #used for scripts and when you need sudo priviliege in ansible
cut -d: -f1 /etc/passwd #list of users
hostnamectl #Static