FROM foogaro/jboss-eap:6.4.4

MAINTAINER Luigi Fugaro <lfugaro@redhat.com>

WORKDIR /opt/rh/jboss-eap
RUN cp -a standalone jenkins

WORKDIR /opt/rh/jboss-eap/jenkins/deployments
RUN curl -L -O http://mirrors.jenkins-ci.org/war/latest/jenkins.war

WORKDIR /opt/rh/jboss-eap

ENTRYPOINT ["/opt/rh/jboss-eap/bin/standalone.sh"]

CMD ["-b", "0.0.0.0", "-Djboss.server.base.dir=jenkins"]
