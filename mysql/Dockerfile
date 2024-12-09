FROM mysql:latest

ENV MYSQL_DATABASE=logindb
ENV MYSQL_USER=loginuser
ENV MYSQL_PASSWORD=loginpass
ENV MYSQL_ROOT_PASSWORD=rootpass

COPY init.sql /docker-entrypoint-initdb.d/
