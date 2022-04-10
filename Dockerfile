#Base image
FROM ubuntu:16.04

# Running Command Image pada saat build Image
RUN apt update && apt install apache2 -y

# Copy index.html dari local ke container pada saat build image
COPY index.html /var/www/html

#running syntax pada saat run container
ENTRYPOINT "apachectl" "-DFOREGROUND"
