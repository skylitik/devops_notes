
Inbound Rules

| vprofile-ELB-SG |           |
| --------------- | --------- |
| http/https      | <Protocol |
| 80/443          | <Port     |
| Anywhere        | <Source   |

| vprofile-app-sg                      |      |      |              |
| ------------------------------------ | ---- | ---- | ------------ |
| tcp                                  | tcp  | ssh  | <Protocol    |
| 8080                                 | 8080 | 22   | <Port        |
| vprofile-ELB-SG                      | myip | myip | <Source      |
| Allow traffic from Vprofile prod ELB |      |      | <Description |

| vprofile-backend-SG              |                                  |                                     |                                             |      |              |
| -------------------------------- | -------------------------------- | ----------------------------------- | ------------------------------------------- | ---- | ------------ |
| tcp                              | tcp                              | Mysql/Aurora                        | All traffic                                 | ssh  | <Protocol    |
| 11211                            | 5672                             | 3306                                | all                                         | 22   | <Port        |
| vprofile-app-sg                  | vprofile-app-sg                  | vprofile-app-sg                     | vprofile-backend-SG                         | myip | <Source      |
| Allow tomcat to connect memcache | Allow tomcat to connect RabbitMQ | Allow 3306 from application servers | Allow Internal traffic to flow on all ports |      | <Description |
