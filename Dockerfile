FROM ghcr.io/linuxserver/webtop:ubuntu-mate

RUN apt-get update && apt-get install -y \
	gimp \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000

VOLUME /config



