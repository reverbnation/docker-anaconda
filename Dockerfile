FROM phusion/baseimage:latest
MAINTAINER Pablo Delgado "pdelgado@opentable.com"

ADD src/ /tmp
RUN /tmp/install.sh

ENV PATH /opt/anaconda/bin:$PATH 

CMD ["/sbin/my_init" , "--","bash", "-l"]
