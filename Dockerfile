FROM ubuntu:latest
apt update -y
apt install nginx -y
RUN ['nginx' '-g' 'daemon off']
expose 80 443