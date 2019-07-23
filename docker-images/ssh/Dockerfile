FROM alpine:3.7

RUN apk update \
&& apk add --no-cache openssh-client bash \
&& mkdir -p ~/.ssh \
&& :> ~/.ssh/known_hosts \
&& chmod 700 ~/.ssh \
&& chmod 644 ~/.ssh/known_hosts \
&& rm -rf /var/lib/apt/lists/* /var/cache/apk/* /usr/share/man /tmp/*
CMD ["ssh"]
