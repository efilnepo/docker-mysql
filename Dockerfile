FROM ubuntu:14.04

RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server
ADD server.cnf /etc/mysql/conf.d/
ADD setup.sh /setup.sh
ADD db_setup /db_setup
EXPOSE 3306
ENTRYPOINT ["/setup.sh"]

