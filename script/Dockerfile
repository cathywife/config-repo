# From official ubuntu
FROM ubuntu
MAINTAINER Elvis

# Repositry
RUN sed -i 's/archive.ubuntu.com/mirrors.sohu.com/g' /etc/apt/sources.list
RUN apt-get update -y --fix-missing
RUN apt-get install -y vim git build-essential wget curl supervisor python-software-properties python-virtualenv python-pip tmux
RUN apt-get install -y mysql-server
RUN echo 'TERM=xterm-256color' >>  /root/.bashrc

# Add autostart
CMD /usr/bin/supervisord -n

# Tips
# docker build .
# docker images
# docker tag image_id base-image

