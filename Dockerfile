FROM dairyd/debian:stretch

LABEL maintainer="docker@lleox.org"

ENV REFRESHED_AT 2021-07-21

RUN set -ex; \
	if ! command -v gpg > /dev/null; then \
		apt-get update; \
		apt-get install -y --no-install-recommends gnupg dirmngr; \
		rm -rf /var/lib/apt/lists/*; fi
