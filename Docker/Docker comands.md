
| ## Comands                                                                                                                | ## Description                                                                |
| ------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| apt install procps -y                                                                                                     | Install in container #process registry                                        |
| docker build -t <-name_file-> .                                                                                           | #Docker_build (you can locate folder at the end `cmd/`)                       |
| docker exec                                                                                                               | Executes comands on containers.                                               |
| docker exec -it <-name-> /bin/bash (or sh)                                                                                | #Connect_to_docker_container                                                  |
| docker images                                                                                                             | #Docker_images command to show images                                         |
| docker inspect                                                                                                            | #Docker_inspect Show Detail of container image                                |
| docker login                                                                                                              | #Docker_login Access to your account with cli                                 |
| docker logs <-containername->                                                                                             | #docker_logs                                                                  |
| docker ps -a                                                                                                              | show dead containers                                                          |
| docker pull <-name->                                                                                                      | Pull to machine image                                                         |
| docker push <-name of image->                                                                                             | #Docker_push  image to hub with tag                                           |
| docker rmi                                                                                                                | Remove docker images                                                          |
| docker run                                                                                                                | #Docker_run Create a container                                                |
| docker run --name <-name->-d -e MYSQL_ROOT_PASSWORD=<-pass-> -p 3030:3306 -v /home/ubuntu/folder:/var/lib/mysql mysql:5.7 | #Run_db_inbackgrnd_with_port_volume                                           |
| docker run --name myweb -p 7080:80 -d nginx                                                                               | #Start_docker, #background , #open_ports                                      |
| docker run -d -P nginx                                                                                                    | #background automatic #Port_mapping                                           |
| docker start/restart/rm/                                                                                                  | -                                                                             |
| docker stop <-name or id->                                                                                                | #Stop                                                                         |
| docker volume create <-name->                                                                                             | #Create_volume_docker                                                         |
| docker volume ls                                                                                                          | #List_volumes_docker                                                          |
| dockers ps                                                                                                                | show containers run                                                           |
| mysql -h <-ip_adress_container-> -u root -ppass                                                                           | #Connect_to_mysql_service_from_docker                                         |
| vim Dockerfile                                                                                                            | #Create_dockerfile [[Docker/Docker files/Webconfig02/Dockerfile\|Dockerfile]] |
| docker-compose up                                                                                                         | #Docker_compose_start -d                                                      |
| docker-compose down                                                                                                       | #Docker_compose_stop                                                          |
| docker-compose ps                                                                                                         | #Docker_compose_process                                                       |
| docker-compose top                                                                                                        | #Docker_compose_show_pid_ppid_comands                                         |
###### Ex1
* Docker dir: /var/lib/docker/containers
* check the id: docker ps
* Go to this id folder
* Check the #Size of the file
* Docker exec myweb ls /
* #processes 
* docker run -it ubuntu /bin/bash
___
###### Logs
docker inspect nginx
After #Port_mapping #docker_logs 
docker run -d -P mysql:5.7 - its not working
docker run -d -P #Variable  MYSQL_ROOT_PASSWORD=<-pass-> mysql:5.7
___
###### Volumes
* #Create_folder 15m0dbdata
* #Run_db_inbackgrnd_with_port_volume 
* #Connect_to_docker_container 
* cd /var/lib/mysql and ls (must be the same data)
* #Create_volume_docker 
* ls /var/lib/docker/volumes/mydata/
* #List_volumes_docker 
* #Detail_of_container_image 
* #docker_logs 
* #Connect_to_mysql_service_from_docker 
___
###### Build Images
* #Download 
* #Create_folder 
* #Archiving 
* #Create_dockerfile 
* #Docker_build 
* #List_of_Images 
* #Start_docker  9080:80
###### Push to dockerhub
* #Docker_build with parameter <user_docker->/<-name_file->
* #Docker_login
* #Docker_push 
###### Entrypoint and CMD
* #Create_folder EntryCMD: [[Folders_entrypoint]]
1. cmd:
* #Docker_build  printer:v1 cmd/
* #Docker_images 
* #Docker_run printer:v1
___
2. entry:
* #Docker_build printer:v2 entry/
* #Docker_run printer:v2 (put the argument here, hello or something)
In a dockerfile, or when you #Docker_inspect any image and you see ENTRYPOINT have command but does not have any argument, it means that user needs to pass the argument.
___
3. entrycmd:
* #Docker_build printer:v3 entrycmd/
* #Docker_run printer:v3
In this case you can add argument or left how it is
###### Docker-composer
All instructions in google, after installing and do folder executable +x.
1. Create file `app.py` and `requiremnts.txt`
2. Create Dockerfile  # in Compose folder
3. Create `docker-compose.yml`
4. #Docker_compose_start 
5. #Docker_compose_stop
6. Edit Dockerfile in compose set folder and add [[compose_add_volumes]]
7. #Docker_compose_start #Run_in_background 
8. #Docker_compose_process 
9. #Docker_compose_show_pid_ppid_comands 
