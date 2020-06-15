FROM ubuntu:latest
apt get update -y
apt install nginx -y
RUN ['nginx' '-g' 'daemon off']
expose 80 443