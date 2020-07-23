FROM ubuntu:16.04

LABEL maintainer=\"@Rangapv\"

RUN apt-get update && apt-get install -y vim

RUN apt-get install -y nginx

RUN apt-get install -y curl

RUN apt-get install -y sudo 

RUN sed -i "/user/s/.*/user nginxuser;/" /etc/nginx/nginx.conf

RUN sed -i "/listen 80 default_server;/s/.*/        listen 8080 default_server;/" /etc/nginx/sites-enabled/default

RUN sed -i "/listen \[\:\:\]\:80 default_server;/s/.*/        listen [::]:8080 default_server;/" /etc/nginx/sites-enabled/default

RUN chmod 777 -R  /var/log/nginx

RUN chmod 777 -R /var/lib/nginx

RUN chmod 777 -R /run

RUN groupadd -g 1999 nginxuser && useradd -r -m -u 1999 -g nginxuser nginxuser

RUN usermod -aG sudo nginxuser

EXPOSE 8080

USER nginxuser

ENTRYPOINT nginx -g 'daemon off;'
