FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y spamassassin

RUN groupadd spamd && \
    useradd -g spamd -s /bin/false -d /var/log/spamassassin spamd && \
    mkdir -p /var/log/spamassassin && \
    chown -R spamd:spamd /var/log/spamassassin

ADD local.cf /etc/spamassassin/local.cf
ADD spam-learn /etc/cron.daily/spam-learn

