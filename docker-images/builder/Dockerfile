FROM alpine:3.10

LABEL maintainer="Ivan Savushkin <ivan@savushkin.me>"

RUN mkdir -p /tmp/scripts/

COPY scripts/*.sh /tmp/scripts/

RUN apk update \
&& apk add --no-cache \
zip \
unzip \
curl \
git \
openssh-client \
gettext \
make \
&& /tmp/scripts/ssh.sh \
&& rm -rf /var/lib/apt/lists/* /var/cache/apk/* /usr/share/man /tmp/*
