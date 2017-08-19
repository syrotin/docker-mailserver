FROM  ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install mysql-server -y

ENV MYSQL_ROOT_PASSWORD: 123321

RUN service mysql restart
ADD createdb.sql /docker-entrypoint-initdb.d/createdb.sql


CMD ["mysqld"]

EXPOSE 3306 
