
| ## Comands                                                                                                                | ## Description                                |
| ------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------- |
| dockers ps                                                                                                                | show containers run                           |
| docker ps -a                                                                                                              | show dead containers                          |
| docker run                                                                                                                | #Create_container                             |
| docker images                                                                                                             | List Images locally                           |
| docker exec                                                                                                               | Executes comands on containers.               |
| docker rmi                                                                                                                | Remove docker images                          |
| docker inspect                                                                                                            | Detail of container & image                   |
| docker start/restart/rm/                                                                                                  | -                                             |
| docker pull <-name->                                                                                                      | Pull to machine image                         |
| docker run --name myweb -p 7080:80 -d nginx                                                                               | Start, name, #background , image, #open_ports |
| docker stop <-name or id->                                                                                                | #Stop                                         |
| docker exec -it <-name-> /bin/bash (or sh)                                                                                | connect to container or run it permanent      |
| apt install procps -y                                                                                                     | Install in container #process registry        |
| docker logs <-containername->                                                                                             | #docker_logs                                  |
| docker run -d -P nginx                                                                                                    | #background automatic #Port_mapping           |
| docker run --name <-name->-d -e MYSQL_ROOT_PASSWORD=<-pass-> -p 3030:3306 -v /home/ubuntu/folder:/var/lib/mysql mysql:5.7 | #Run_db_inbackgrnd_with_port_volume           |
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
* 
