Create VPC in different region
Go to Oregon Zone => vpc rename default
Create VPC =>15m0-db
CIDR: 172.22.0.0/16
Go to RT name it
___
in N.California region =>Peering connections => Create 15m0-peering
Requester 15m0vpc
Another VPC to peer with => another Region = > Oregon(or something else) copy ID 
___
Select Peering Connection in Oregon => Actions => Accept request
___
Routes => priv-RT => add rule
Destination 0.0.0.0| Target - peering
___
Back to Oregon => Route Table = > Edit routes
Add route 2 172.20.0.0/16


\


