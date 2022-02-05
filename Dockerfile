#FROM linuxserver/webtop:ubuntu-mate
FROM ubuntu:20.04

MAINTAINER labarta31@gmail.com

RUN apt update && \
    apt -y upgrade && \
    apt -y install debconf-utils gnupg1 sudo bash curl wget && \
    curl -sL http://download-linkat.xtec.cat/linkat-install-docker.sh | sudo -E bash - && \
    apt clean && apt autoclean && DEBIAN_FRONTEND=noninteractive apt-get autoremove -yq

CMD ["/bin/bash"]