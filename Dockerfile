FROM dairyd/buildpack-deps:stretch-curl

LABEL maintainer="docker@lleox.org"

ENV REFRESHED_AT 2021-07-21

# procps is very common in build systems, and is a reasonably small package
RUN apt-get update && apt-get install -y --no-install-recommends \
		bzr \
		git \
		mercurial \
		openssh-client \
		subversion \
		\
		procps \
	&& rm -rf /var/lib/apt/lists/*
