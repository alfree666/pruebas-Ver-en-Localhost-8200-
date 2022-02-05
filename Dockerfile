FROM ubuntu:20.04

LABEL maintainer="rlabarta"

RUN apt-get update && apt-get install -y --no-install-recommends \
    gimp && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /root/Share

VOLUME /root/Share

EXPOSE 80

CMD ["/usr/bin/gimp"]

