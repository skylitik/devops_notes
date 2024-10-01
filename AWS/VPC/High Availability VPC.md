[[High Availabillity VPC.excalidraw]]
Region: us-west-1
VPC Range 172.20.0.0/16
4 subnets: 2 pub sub, 2 priv sub
2 zones: us-west-1a, us-west-1b
172.20.1.0/24 => pub-sub1 [us-west-1a]
172.20.2.0/24 => pub-sub2 [us-west-1b]
172.20.3.0/24 => priv-sub1 [us-west-1a]
172.20.4.0/24 => priv-sub1 [us-west-1b]
1 Internet GW
2 NAT Gateway
1 EIP
2 Route Tables: 1 Pub Sub RT, 1 Pub Sub RT
1 Bastion host in Pub subnet
______
NACL
1 more VPC => VPC Peering