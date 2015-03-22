FROM itoed/fedora:21
MAINTAINER Eduardo Ito <itoed@yahoo.com>

RUN rpm --import http://cfengine.com/pub/gpg.key
ADD cfengine-community.repo /etc/yum.repos.d/

# Yum packages
RUN yum install -y cfengine-community ; yum clean all
