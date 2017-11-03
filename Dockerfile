FROM dairyd/debian:stretch
MAINTAINER Leo Luduena<lleo@linux.com>

ENV REFRESHED_AT 2017-11-03

RUN set -ex; \
	if ! command -v gpg > /dev/null; then \
		apt-get update; \
		apt-get install -y --no-install-recommends \
			gnupg \
			dirmngr \
		; \
		rm -rf /var/lib/apt/lists/*; \
fi
