FROM behrangsa/informix:base
MAINTAINER Behrang Saeedzadeh

COPY informix_install.sh \
     informix_start.sh \
     informix_stop.sh /

RUN bash /informix_install.sh \
         /tmp/iif.12.10.FC6IE.linux-x86_64.tar

RUN echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

VOLUME ["/home/informix/data"]

USER informix

CMD /bin/bash /informix_start.sh ; \
    /bin/bash ; \
    /bin/bash /informix_stop.sh
