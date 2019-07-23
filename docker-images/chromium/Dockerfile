FROM node:lts-alpine

LABEL maintainer="Savushkin Ivan <ivan@savushkin.me>"

RUN apk add --no-cache chromium nss \
&& rm -rf /var/lib/apt/lists/* /var/cache/apk/* /usr/share/man /tmp/*
ENV CHROME_BIN=/usr/bin/chromium-browser
ENV CHROME_PATH=/usr/lib/chromium/
