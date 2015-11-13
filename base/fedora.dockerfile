FROM docker.io/fedora:23

MAINTAINER Luigi Fugaro <lfugaro@redhat.com>

RUN dnf -y update
RUN dnf clean all

RUN dnf -y install wget telnet vim tar unzip procps

CMD ["true"]
