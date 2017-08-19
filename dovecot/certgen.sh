#!/bin/bash

if [ ! -f /etc/dovecot/private/dovecot.pem ];
then
cd /usr/share/dovecot/
/bin/sh mkcert.sh
cp /etc/dovecot/dovecot.pem /etc/ssl/certs/dovecot.pem
cp /etc/dovecot/private/dovecot.pem /etc/ssl/private/dovecot.key
cd /etc/ssl/private
openssl dhparam -out dhparams.pem 2048
fi
