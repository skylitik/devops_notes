Install docker engine in Jenkins
 * add jenkins user to docker group & reboot
Install AWS cli
IAM user with ecr permission
Create ECR repo
Plugins
 * ECR,docker pipeline, aws skd for credentials
Store aws credentials in jenkins
Run the pipeline 


---------------------------------
|Install docker engine in Jenkins|
---------------------------------
- connect to Jenkins server
- $sudo apt update && apt install awscli -y
- search for Docker Engine installattion
- switch to jenkins user {$su - jenkins}
- add jenkins user to root {$usermod -a -G docker jenkins}
- $id jenkins
- reboot

---------------------------------
|IAM user with ecr permission   |
---------------------------------
- User - jenkins
- Policy: [registry]AmazonEC2ContainerRegistryFullAccess, [ecs]AmazonECS_FullAccess
- User created > go to create access Key (CLI)

---------------------------------
|Create ECR repo                |
---------------------------------
Ecr > Repositories
Private 
Name/vprofileappimg>create


---------------------------------
|Install Plugins                |
---------------------------------
- Go to Jenkins server > Plugins > Docker Pipeline, ECR, aws sdk all, CloudBees Docker Build an Publish
- After install > Manage Credentials Jenkins> new Cred> choose 'AWS Cred' :
    *ID:awscreds
    *Descr:awscreds
    *access key:<from IAM user jenkins>
    *secret:<from IAM user>
---------------------------------
|Run the pipeline script         |
---------------------------------

---------------------------------
|Configure ecs                   |
---------------------------------
- Go to ecs
- Cluster > Create > vprofile
- Monitoring > Use Container Insights
- Tags> vprofile
_____________________________________
- Create Task Definitions > vprofileapptask
- Memory - 2 GB
------
-Container > vproapp> add URL from ECR
- Change port (8080) //thats Tomcat service
- Tag > Name > vprofileapptask
- Go to task definition > 'profile'> Task execution role (or IAM > Access managment > Roles)
- Choose pemission policy > CloudWatchLogsFullAccess
- Next on Clusters>profile>services> create service
-Family - profile
-Revision - latest
-service Name - vprofileappsvc
- desired tasks - 1
- deployment failure detection > uncheck all
- Networking > create sec group :vproappecselb-sg
 * rules: 80 - anywhere;  8080 - anywhere
-  Load Balancing: App loadbal > name: vproappelbecs
- Target group > name: vproecstg;
    * health check path: /login
create > end
--------------------------------------------
add plugin to Jenkins: Pipeline:Aws steps

pipeline ecs
