FROM debian:buster

RUN apt update && apt install -y nginx && apt install -y php-mysql php-fpm && apt install -y wget

# RUN service php7.3-fpm start

RUN mkdir /var/www/adminer

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-en.php -O /var/www/html/index.php

COPY ./adminer.sh adminer.sh

# RUN service php7.3-fpm stop 

ENTRYPOINT [ "bash", "./adminer.sh"]

CMD [ "nginx", "-g", "daemon off;" ]