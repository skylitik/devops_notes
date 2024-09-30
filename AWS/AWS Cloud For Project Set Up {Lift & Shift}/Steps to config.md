

First do [[Lunch Security Group]]
## Lunch Instances

| Instance | mysql             | memcache            | rabbitmq            | app01             |
| -------- | ----------------- | ------------------- | ------------------- | ----------------- |
| **VM**   | Amazon Linux      | <                   | <                   | Ubuntu            |
| Name     | vprofile-db01     | vprofile-mc01       | vprofile-rmq01      | vprofile-app01    |
| Tag      | Project \vprofile | <                   | <                   | <                 |
| SG       | Backend           | <                   | <                   | app-sg            |
| Script   | [[mysql_script]]  | [[memcache_script.sh]] | [[rabbitmq_script]] | [[tomcat_script]] |
For ssh connection:
username Linux ec2-user
username Ubuntu Ubuntu
After checking Vms>>[[Route53]]
* [[Bucket config]]
* [[Create Roles]]
* [[vm_app]]