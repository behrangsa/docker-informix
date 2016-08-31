#
#  url:         https://github.com/0x1fff/docker-informix
#

FROM debian:wheezy
MAINTAINER Tomasz Gaweda
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update && apt-get -y install wget

COPY ./iif.12.10.FC6IE.linux-x86_64.tar ./informix_install.sh ./informix_start.sh ./informix_stop.sh ./

RUN	bash ./informix_install.sh ./iif.12.10.FC6IE.linux-x86_64.tar    \
	  && rm iif.*.linux-x86_64.tar

RUN echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

VOLUME ["/home/informix/data"]

USER informix

RUN echo `which dbaccess`

CMD /bin/bash informix_start.sh ; /bin/bash ; /bin/bash informix_stop.sh
