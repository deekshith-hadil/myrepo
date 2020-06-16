FROM debian:latest
CMD 'apt update -y'
CMD 'apt install nginx -y'
RUN ['nginx', '-g', 'daemon off;']
expose 80 443