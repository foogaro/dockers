FROM foogaro/base

MAINTAINER Luigi Fugaro <lfugaro@redhat.com>

RUN yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel --nogpgcheck

CMD ["true"]
