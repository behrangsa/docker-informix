FROM debian:wheezy
MAINTAINER Behrang Saeedzadeh
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update && \
    apt-get -y install wget

COPY iif.12.10.FC6IE.linux-x86_64.tar /tmp

CMD /bin/bash
