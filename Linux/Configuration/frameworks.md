#root@scriptbox/scripts

| mkdir remote_websetup                                                        | create dir for hosts files                          |
| ---------------------------------------------------------------------------- | --------------------------------------------------- |
| vim remhosts                                                                 | files for hosts                                     |
| web01,web02,web03                                                            | use here for IP addresses or named hostnames before |
| :wq                                                                          |                                                     |
| for host in `cat remhosts`; do echo $host;done                               | print hosts with [[cat]]                            |
| for host in `cat remhosts`; do ssh devops@$host hostname;done                | login to hosts with root(devops)                    |
| for host in `cat remhosts`; do ssh devops@$host uptime;done                  | show every machine uptime                           |
| for host in `cat remhosts`; do ssh devops@$host sudo yum install git -y;done | install git on vms                                  |
