|                                                 | When you login to machine , its ask for password, figure out: safer login requirement |
| ----------------------------------------------- | ------------------------------------------------------------------------------------- |
| `ssh-keygen`                                    | Key-based comand                                                                      |
| private key                                     | Your identification has been saved in /root/.ssh/id_rsa.                              |
| public key                                      | Your public key has been saved in /root/.ssh/id_rsa.pub.                              |
| `ssh-copy-id devops@web01`                      | put lock for vm key to open(copy) and other vm                                        |
| .ssh/id_rsa                                     | default store for ssh key                                                             |
| ssh [[-i]] . ssh/id_rsa devops@web01 [[uptime]] | use key to login via ssh to vm                                                        |
