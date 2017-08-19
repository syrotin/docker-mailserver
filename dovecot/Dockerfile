FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y dovecot-core dovecot-imapd dovecot-lmtpd dovecot-mysql dovecot-pop3d

COPY conf/ /etc/dovecot
ADD  certgen.sh /tmp/certgen.sh
RUN chmod +x /tmp/certgen.sh


