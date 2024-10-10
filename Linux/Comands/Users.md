
| ## Comand                 | ## Description                                                |
| ------------------------- | ------------------------------------------------------------- |
| ls -l /etc/sudoers        | List of sudoers                                               |
| userdel -r username       | deluser                                                       |
| --become                  | used for scripts and when you need sudo priviliege in ansible |
| cut -d: -f1 /etc/passwd   | list of users                                                 |
| hostnamectl               | static                                                        |
| usermod -aG docker ubunut | Add user to #docker_group                                     |
| sudo vim /etc/group       | Edit users in VM                                              |
| useradd                   | add user                                                      |
| passwd                    | create password for user                                      |
| visudo                    | edit sudoers file                                             |
| add user to sudoers<br>   | user  ALL=(ALL)       NOPASSWD: ALL                           |
| sudo -i                   | go to admin                                                   |
| id user                   | Check user in which group state                               |
