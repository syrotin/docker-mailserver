FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y wget roundcube roundcube-mysql php php-cli apache2

RUN wget -q https://github.com/roundcube/roundcubemail/releases/download/1.3.0/roundcubemail-1.3.0-complete.tar.gz
RUN tar -C /var/www/html/ -xf roundcubemail-1.3.0-complete.tar.gz
RUN ln -s /var/www/html/roundcubemail-1.3.0-complete.tar.gz /var/www/html/roundcubemail

COPY /config /var/www/html/roundcubemail/config
ADD debian-db.php /etc/roundcube/debian-db.php

