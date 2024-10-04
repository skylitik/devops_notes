`vim /etc/ssh/ssh_config  
#on machine which you want to access with ssh (on ububntu login with password and login are disabled)
edit:
`/Password`
#search for line
edit to `yes`
`:wq`
for exit

`systemctl restart ssh`