FROM foogaro/jboss-eap:6.4.4

MAINTAINER Luigi Fugaro <lfugaro@redhat.com>

WORKDIR /opt/rh

COPY jboss-dv-installer-6.2.0.redhat-3.jar /opt/rh/
COPY installation.xml /opt/rh/
COPY installation.xml.variables /opt/rh/

RUN java -jar jboss-dv-installer-6.2.0.redhat-3.jar installation.xml

WORKDIR /opt/rh/jboss-eap
RUN ./bin/add-user.sh --silent admin admin.2015

ENTRYPOINT ["/opt/rh/jboss-eap/bin/standalone.sh"]

CMD ["-b","0.0.0.0","-bmanagement","0.0.0.0"]
