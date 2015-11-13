#FROM registry.access.redhat.com/rhel7.1
FROM docker.io/fedora:23

MAINTAINER Luigi Fugaro <lfugaro@redhat.com>

RUN subscription-manager register --username=lfugaro@redhat.com --password=LF-rh-001 --auto-attach

RUN rm -rf /etc/yum.repos.d/*
RUN rm -fr /var/cache/yum/*

RUN yum clean all

RUN yum -y install deltarpm
RUN yum -y install wget telnet m-locate net-utils vim tar unzip
RUN wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN rpm -ivh epel-release-7-5.noarch.rpm
#RUN yum --enablerepo=rhel-7-server-htb-rpms clean metadata
#RUN yum --enablerepo=epel -y update
#RUN yum -y update --nogpgcheck

RUN yum -y install procps

CMD ["true"]
