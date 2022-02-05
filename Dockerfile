FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
	gimp \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 80

ENTRYPOINT [ "gimp" ]
