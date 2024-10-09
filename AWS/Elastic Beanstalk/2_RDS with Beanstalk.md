* Create Database => name 15m0-rds
* Auto-generate password
* t2.micro
* Create SG - 15m0-sg
* Addition inf - name: accounts
___
Go to SG => <-id->AWSEBSecurityGroup - copy ID
Then go to RDS SG => inbound rules edit: add rule 3306: source rds
* Explaining: Our Beanstalk instance can connect to our RDS Instance on port 3306
___
git bash - chmod 400 Downloads/k.pem
ssh to any instance => dnf search mysql = choose package:dnf install mariadb105 -y
___
mysql -h (and copy endpoint rds instance) -u admin -p<-pass-> <-namedb->(accounts or etc)
___
show databases;
___
Go to github and export code: wget https://raw.githubusercontent.com/hkhcoder/vprofile-project/refs/heads/aws-ci/src/main/resources/db_backup.sql
___
now you can backup file with redirection:
mysql -h rds15m0.cx8kci4oevvq.us-east-1.rds.amazonaws.com -u admin -ptVPHXVsHRezHZrEj7nCO accounts < db_backup.sql
mysql -h rds15m0.cx8kci4oevvq.us-east-1.rds.amazonaws.com -u admin -ptVPHXVsHRezHZrEj7nCO accounts
show tables;
