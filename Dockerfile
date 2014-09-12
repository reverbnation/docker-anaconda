FROM phusion/baseimage:latest
MAINTAINER Pablo Delgado "pdelgado@opentable.com"

ADD src/ /tmp
ADD notebook-server.sh /etc/start.sh
RUN /tmp/install.sh

ENV PATH /opt/anaconda/bin:$PATH 

CMD ["/sbin/my_init" , "--","/etc/start.sh"]
