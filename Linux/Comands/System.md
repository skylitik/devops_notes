
| ## Comand                        | ## Description                                                   |
| -------------------------------- | ---------------------------------------------------------------- |
| /sbin/shutdown -t now            | #Shutdown                                                        |
| cat /etc/os-release              | Show OS Release                                                  |
| clear                            | Clean screen                                                     |
| dmesg                            | #kernel_buffer (\| tail)                                         |
| dmesg -T \| tail                 | #kernel_errors                                                   |
| free -m                          | #memory_usage                                                    |
| grep                             | Piping search                                                    |
| grep -v                          | search for a regular expression and print all lines NOT matching |
| history                          | Show history comands                                             |
| iftop                            | #network_performance                                             |
| iostat -xz 1                     | #disk_I/O                                                        |
| ip a                             | Show network Interfaces                                          |
| mpstat -P ALL 1                  | #CPU_balance                                                     |
| mtr                              | #network_latency (google.com)                                    |
| pidstat 1                        | #process_usage                                                   |
| ping -c 4 --adress--             | ping 4 times                                                     |
| proc                             | Processes                                                        |
| ps -ef                           | Show #processes of VM                                            |
| sar -n DEV 1                     | #network_I/O                                                     |
| sar -n TCP, ETCP 1               | #TCP_stats                                                       |
| smem                             | #memory_allocated_to_per_process                                 |
| ss -tunlp \| grep 80             | Checking all the open TCP port                                   |
| tail                             | last lines of code                                               |
| tail -50 /etc/services           | Show #open_ports                                                 |
| tail -f /var/log/monit_httpd.log | Show the last logs lines of script                               |
| top                              | #check_overview                                                  |
| uptime                           | #load_averages                                                   |
| vmstat 1                         | #overall_stats_by_time                                           |
