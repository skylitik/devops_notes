FROM ubuntu:latest
LABEL "Author"="Res"
LABEL "Project"="antique"
ENV DEBIAN_FRONTED=noninteractive
RUN apt update && apt install git -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD antique.tar.gz /var/www/html
#COPY antique.tar.gz /var/www/html