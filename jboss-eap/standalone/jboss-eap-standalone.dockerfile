FROM foogaro/jboss-eap:6.4.4

MAINTAINER Luigi Fugaro <lfugaro@redhat.com>

WORKDIR /opt/rh/jboss-eap

ENTRYPOINT ["/opt/rh/jboss-eap/bin/standalone.sh"]

CMD ["-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
