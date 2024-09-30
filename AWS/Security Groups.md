* A security group acts as a virtual firewall that controls the traffic for one or more instances
* You can add rules to each SG that allow traffic to or from its associated instances
* SG are 'statefull'


| Create a Security Group & Adding inbound rules |                                                                                                                                           |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| create                                         | aws ec2 create-security-group --group-name <sec-group-name> --description "<Description>"                                                 |
| link                                           | curl -s https://checkip.amazonaws.com                                                                                                     |
| authorization                                  | aws ec2 authorize-security-group-ingress --group-id <security group Id> --protocol tcp --port <port Number> --cidr <ip address with gate> |
| all trafic accepted                            | aws ec2 authorize-security-group-ingress --group-id <security grp Id>--protocol tcp --port 22-8000 --cidr 0.0.0.0/0                       |
| view info for my-sg                            | aws ec2 describe-security-groups --group-names <security grp Name>                                                                        |
| delete sg                                      | aws ec2 delete-security-group --group-name <security grp Name>                                                                            |
| Optional: show SG ID                           | aws ec2 describe-security-groups --query 'SecurityGroups[*].{ID:GroupId,Name:GroupName,Description:Description}' --output table<br>       |
