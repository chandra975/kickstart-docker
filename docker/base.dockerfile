# Docker image to use.
FROM amazonlinux:2

# Install system packages.
RUN set -x \
  && yum update -y \
  && yum install -y wget vim net-tools initscripts gcc make tar bind-utils nc \
  && yum install -y python-devel python-setuptools \
  && easy_install supervisor pip \
  && mkdir /etc/supervisord.d \
  && history -c
