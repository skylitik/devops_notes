
| Installation on Win       | `choco install awscli -y`     |
| ------------------------- | ----------------------------- |
| check version on git bash | `aws --version`               |
| Config                    | `aws configure`               |
| Output format             | json                          |
| list of config            | `ls ~/.aws/`                  |
| show config               | `cat ~/.aws/config`           |
| show credits              | `cat ~/.aws/credentials`      |
| show ID                   | `aws sts get-caller-identity` |
| show instances in region  | `aws ec2 describe-instances`  |

| EC2 CLI           |                                                                                                 |
| ----------------- | ----------------------------------------------------------------------------------------------- |
| Create a key pair | aws ec2 create-key-pair --key-name <name> --query 'KeyMaterial' --output text><name.pem>        |
| Delete a key pair | aws ec2 delete-key-pair --key-name <keypair-Name>                                               |
| Show keys         | aws ec2 describe-key-pairs --query 'KeyPairs[*].{ID:KeyPairId,Name:KeyName}' --output table<br> |

| Create a Security Group & Adding inbound rules |                                                                                                                                     |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| create                                         | aws ec2 create-security-group --group-name <sec-group-name> --description "<Description>"                                           |
| link                                           | curl -s https://checkip.amazonaws.com                                                                                               |
| authorization                                  | aws ec2 authorize-security-group-ingress --group-id <security group Id> --protocol tcp --port <port Number> --cidr <ip address>     |
| example                                        | aws ec2 authorize-security-group-ingress --group-id <security grp Id>--protocol tcp --port 22-8000 --cidr 0.0.0.0/0                 |
| view info for my-sg                            | aws ec2 describe-security-groups --group-names <security grp Name>                                                                  |
| delete sg                                      | aws ec2 delete-security-group --group-name <security grp Name>                                                                      |
| Optional: show SG ID                           | aws ec2 describe-security-groups --query 'SecurityGroups[*].{ID:GroupId,Name:GroupName,Description:Description}' --output table<br> |
|                                                |                                                                                                                                     |

| Launch instances                                                                  |                                                                                                                                           |
| --------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| You can get the ami Id’s from documentation or console for your required Instance | aws ec2 run-instances --image-id <ami-Id> --count 1 --instance-type <type> --keyname <keypair-Name> --security-groups <security grp Name> |
| Add a tag to your Instance                                                        | aws ec2 create-tags --resources <Instance-Id>--tags Key=Name,Value=<value>                                                                |
| Terminate your Instance                                                           | aws ec2 terminate-instances --instance-ids <Instance-Id>                                                                                  |
| view info about instances                                                         | aws ec2 describe-instances --query 'Reservations[*].Instances[*].InstanceId' --output table<br>                                           |
