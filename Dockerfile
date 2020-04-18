FROM dairyd/buildpack-deps:stretch-curl

LABEL maintainer="7of9@ydevops.com"

ENV REFRESHED_AT 2020-04-18

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
