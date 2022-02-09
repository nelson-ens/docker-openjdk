FROM openjdk:11-jdk-slim-buster

LABEL org.opencontainers.image.authors="nelson@ensemble.com"

RUN apt-get -y update && \
    apt-get install -y curl && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get -y install tini && \
    apt-get -y install vim && \
    apt-get -y install ack-grep && \
##    apt-get -y install openssh-server && \
    echo "root:Docker!" | chpasswd && \
    mkdir -p /mnt/aem/crx-quickstart/install

#CMD ["/bin/bash"]
