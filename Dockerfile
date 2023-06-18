FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y apache2 curl
COPY index.html /var/www/html/index.html
WORKDIR /var/www/html
ENTRYPOINT ["/usr/sbin/apache2ctl"]
EXPOSE 80 
