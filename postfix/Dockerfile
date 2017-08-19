FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y postfix postfix-mysql

RUN groupadd -g 5000 vmail
RUN useradd -g vmail -u 5000 vmail -d /var/mail
RUN chown -R vmail:vmail /var/mail

COPY conf/ /etc/postfix/

RUN postmap /etc/postfix/dependent
RUN postmap /etc/postfix/transport

VOLUME [ "/var/log/", "/var/vmail/", ]
