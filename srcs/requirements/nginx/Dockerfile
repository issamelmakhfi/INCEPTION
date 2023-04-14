# Pull lastest version of debian image from regestry

FROM debian:bullseye

# Copy script that generate certificate to set up SSl for nginx
COPY ./script.sh /script.sh

#  Install openssl and nginx
RUN apt-get update && apt-get install -y curl && apt -y install nginx && apt -y install vim \
    && apt -y install openssl

# run the script to generate CA
RUN bash script.sh

# Copy nginx config file that already add SSL to nginx
COPY ./default.conf /etc/nginx/sites-enabled/default
COPY ./index.html /usr/share/nginx/

ENTRYPOINT  ["nginx", "-g", "daemon off;"]