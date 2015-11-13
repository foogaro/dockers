FROM foogaro/maven

MAINTAINER Luigi Fugaro <lfugaro@redhat.com>

WORKDIR /opt/rh

COPY jboss-eap-6.4.0.zip /opt/rh/
COPY jboss-eap-6.4.4-patch.zip /opt/rh/

RUN unzip jboss-eap-6.4.0.zip
RUN mv jboss-eap-6.4 jboss-eap
ENV JBOSS_HOME /opt/rh/jboss-eap
RUN rm jboss-eap-6.4.0.zip
RUN /opt/rh/jboss-eap/bin/jboss-cli.sh --command="patch apply /opt/rh/jboss-eap-6.4.4-patch.zip"
RUN rm jboss-eap-6.4.4-patch.zip

CMD ["true"]
