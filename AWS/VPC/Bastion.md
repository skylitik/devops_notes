Create a Security Group for Bastion =>15m0-bastion-sg
Change VPC to 15m0-VPC
Add rule inbound SSH only from corporate network (Don't give it from anywhere)
For study => add from myip
___

# Keypair
15m0-bastion-key
___
## Instance
name - bastion
For corporate things use CIS Ubuntu Linux (AMI)
For study Plain Ubuntu Server 22
Key pair => 15m0-bastion-key
VPC => 15m0-VPC
pub subnet 1
SG => bastion
___

