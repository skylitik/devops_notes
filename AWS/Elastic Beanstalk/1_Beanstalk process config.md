1. Keypair
2. Config environment: (name,)
* Platform: Tomcat 10 with corretto 21
* Presets: Custom conf
* Service Role:aws-elasticbeanstalk-service-role
* Keypair: keipair
* EC2 instance: vprofile-bean-role [[<Role for Beanstalk.json>]]
* Select VPC default =>Activated =>All subnets
* Data Base - null
* Tag
*  Select GP3 root Volume
* Auto scaling group - Load Balance
* min - 2, max - 4
* Instance type - t2.micro
* Processes - make Session Stickiness
* Rolling updates - Rolling , 50 %