# From official ubuntu-12.04
FROM ubuntu
MAINTAINER Elvis

# Repositry
RUN sed -i 's/archive.ubuntu.com/mirrors.sohu.com/g' /etc/apt/sources.list
RUN apt-get update -y --fix-missing
RUN apt-get install -y vim git build-essential wget curl supervisor python-software-properties python-virtualenv python-pip mysql-server tmux

# Add autostart
CMD /usr/bin/supervisord -n
