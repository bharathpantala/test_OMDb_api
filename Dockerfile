# using Ubuntu 16.04 as base image
FROM ubuntu:16.04

# File Author / Maintainer
MAINTAINER Bharath Pantala "bharathpantala@gmail.com"

# Package Installation(Nginx)

RUN apt-get update -y && \
    apt-get install -y nginx

#Copying the Source files to image

COPY ./index.html /var/www/html/
#exposing 80 listening port

EXPOSE 80

#Initial Command

CMD ["nginx","-g","daemon off;"]

