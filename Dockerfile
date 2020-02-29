FROM centos:8
MAINTAINER RazzDazz

ENV REFRESHED_AT 2020-02-29

EXPOSE 80

# update os
RUN yum update -yq && \
    yum upgrade -yq
     
RUN yum install -yq python-setuptools

RUN easy_install supervisor

# clean up
RUN yum clean all -yq
     
# add convienent editor for debugging, remove later
RUN yum install -yq nano

# run shell to keep container alive for testing
CMD  /bin/bash
