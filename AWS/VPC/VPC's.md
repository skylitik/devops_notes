[[Corporate Datacenter 2024-09-30 10.37.38.excalidraw]]
[[VPC Network.excalidraw]]
[[AmazonVPC.excalidraw]]
[[VPC Diagram - Public and Private Subnets.excalidraw]]
----

VPC - Virtual Private Cloud

* VPC is a logical data center within an AWS Region
* VPC is an on-demand configurable pool of shared computing resources allocated within a public cloud environment.
* Control over network environment, select IP address range, subnets and configure route tables and gateways.


#Private_IP_Ranges
* Class A 10.0.0.0 - 10.255.255.255
* Class B 172.16.0.0 - 172.31.255.255
* Class C 192.168.0.0 - 192.168.255.255
#Subnet_Masks
* 255.0.0.0
* 255.255.0.0
* 255.255.255.0

#NAT to enable instances in a private subnet to connect to the internet or other AWS services

An internet #gateway is a horizontally scaled, redundant, and highly available VPC component that allows communication between instances in your VPC and the internet.