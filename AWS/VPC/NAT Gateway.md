* Allocate Elastic IP => tag (15m0)
* Create NAT gateway => nameit 15m0-NAT-GW
* Select Subnet => pub 1
* Elastic ip => 15m0-NAT-EIP
___
# Create Route Table
name - 15m0-priv-RT
vpc - 15m0-VPC
___
## Edit subnet association
Select 2 privsub
___
### Edit Routes
Add route - All ips to 15m0-NAT-GW (This rule makes your subnet private)
___

#### Setup DNS
Edit VPC settings
Enable DNS hostnames