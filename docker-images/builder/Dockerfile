FROM docker:latest

LABEL maintainer="Ivan Savushkin <ivan@savushkin.me>"

ENV KUSTOMIZE_VER 3.5.4
ENV KUBECTL_VER 1.17.2

ENV CHROME_BIN=/usr/bin/chromium-browser
ENV CHROME_PATH=/usr/lib/chromium/

RUN mkdir -p /tmp/scripts/ /opt/makefiles/

COPY scripts/*.sh /tmp/scripts/
COPY packages/*.list /tmp/packages/

RUN apk update \
&& cat /tmp/packages/apk.list | xargs apk add --no-cache \
&& /tmp/scripts/ssh.sh \
&& /tmp/scripts/kubectl.sh \
&& /tmp/scripts/kustomize.sh \
&& npm config set unsafe-perm true \
&& cat /tmp/packages/npm.list | xargs npm install -g \
&& rm -rf /var/lib/apt/lists/* /var/cache/apk/* /usr/share/man /tmp/*

COPY makefiles/Makefile.* /opt/makefiles/
