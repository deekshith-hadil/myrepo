FROM debian:latest
RUN apt update -y
RUN apt install nginx -y
CMD ['nginx', '-g', 'daemon off;']
expose 80 443