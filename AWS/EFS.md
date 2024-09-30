* Create VM
* Key pair
* SG for VM (inbound ssh + http from my ip)
* SG for folder (images) (inbound >> nfs >>source sg from webserwer)
* Create EFS with parameters
* For regions choose SG last one
* Crate access point
* install amazon mount ( sudo yum install -y amazon-efs-utils -y
)
* Update /etc/fstab (Documentation AWS)
* Create dir for backup
* `mount -fav`
* Back folder with backup (images)
