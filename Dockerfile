FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
RUN rm -rf /var/www/html/*
COPY ./index.html /var/www/html/
ENTRYPOINT ["nginx", "-g", "daemon off;"]
EXPOSE 80
