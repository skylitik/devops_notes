Create key => web-key
___

 scp -i Downloads/15m0-bastion-key.pem Downloads/web-key-15m0.pem ubuntu@54.183.144.115:/home/ubuntu/web-key-15m0.pem

(user have permission to that dir)
(file was copied to bastion host)
___

ssh to bastion host
ls
pwd

___
Lunch Instance Amazon Linux 2 AMI - 
web02
t2.micro
keypair-webkey
subnets-privat (1 or 2)
Create SG - web01-sg
ssh 22
custom => 15m0-bastion-SG
____
Go to Bastion host and do ssh -i web-key.pem ec2-user@privateip
(web01 is in private subnet, bastion is in the public)
chmod 400 web-key.pem
yum install httpd wget unzip -y
Search for template
And configure a [[Quickstart Apache on Centos.sh]]
___
# Create load balancer
Create Target Group first => for instances
VPC => 15m0-VPC
name - web-tg
select web01 instance
include as pending below
___
Create SG for ELB
web-elb-sg
vpc - 15m0-VPC
inbound rule => 80 from anywhere (ipv4 and ipv6)
___
# Load Balancer
App LB
15m0-web-elb
network mapping =>15m0-VPC
zones - pub1 and pub2
SG => web-elb
listeners 80 - web-tg
___

web1 =>sg=> inbound rule 80 from ELB
___


