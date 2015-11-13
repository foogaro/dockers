FROM foogaro/maven

MAINTAINER Luigi Fugaro <lfugaro@redhat.com>

RUN mkdir -p /opt/rh/nexus

WORKDIR /opt/rh/nexus
COPY nexus-2.11.4-01-bundle.tar.gz /opt/rh/nexus/
RUN tar zxvf nexus-2.11.4-01-bundle.tar.gz
RUN rm nexus-2.11.4-01-bundle.tar.gz
RUN mv nexus-2.11.4-01 nexus-2

#ENTRYPOINT ["/opt/rh/nexus/nexus-2/bin/nexus"]
#CMD ["console"]
