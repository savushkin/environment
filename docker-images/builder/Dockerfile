FROM docker:latest

LABEL maintainer="Ivan Savushkin <ivan@savushkin.me>"

ENV CHROME_BIN=/usr/bin/chromium-browser
ENV CHROME_PATH=/usr/lib/chromium/

RUN mkdir -p /tmp/scripts/

COPY scripts/*.sh /tmp/scripts/
COPY packages/*.list /tmp/packages/

RUN apk update \
&& cat /tmp/packages/apk.list | xargs apk add --no-cache \
&& /tmp/scripts/ssh.sh \
&& /tmp/scripts/kubectl.sh \
&& npm config set unsafe-perm true \
&& cat /tmp/packages/npm.list | xargs npm install -g \
&& rm -rf /var/lib/apt/lists/* /var/cache/apk/* /usr/share/man /tmp/*
