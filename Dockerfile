FROM ubuntu:latest
RUN 'apt update -y'
RUN 'install nginx -y'
CMD ['nginx' '-g' 'daemon off']
expose 80 443