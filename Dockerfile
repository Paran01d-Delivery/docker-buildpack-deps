FROM dairyd/debian:stretch
LABEL maintainer="devops@yungas.co"


ENV REFRESHED_AT 2018-12-17

RUN set -ex; \
	if ! command -v gpg > /dev/null; then \
		apt-get update; \
		apt-get install -y --no-install-recommends gnupg dirmngr; \
		rm -rf /var/lib/apt/lists/*; fi
