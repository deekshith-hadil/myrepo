FROM debian:latest
#just a comment
RUN apt update -y
RUN apt install nginx -y
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80 443