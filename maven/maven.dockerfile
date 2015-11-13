FROM foogaro/open-jdk

MAINTAINER Luigi Fugaro <lfugaro@redhat.com>

WORKDIR /opt/rh

# Downloading, installing and configuring Maven
RUN curl -O http://www.eu.apache.org/dist/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz
RUN tar zxvf apache-maven-3.3.3-bin.tar.gz
RUN rm apache-maven-3.3.3-bin.tar.gz
RUN mv apache-maven-3.3.3 maven

ENV M2_HOME /opt/rh/maven
ENV PATH $M2_HOME/bin:$PATH

CMD ["true"]
