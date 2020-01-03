FROM docker:latest

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
nodejs \
npm \
g++ \
make \
python \
&& /tmp/scripts/ssh.sh \
&& npm config set unsafe-perm true \
&& npm install -g \
commitlint \
@commitlint/config-conventional \
conventional-changelog-conventionalcommits \
@semantic-release/gitlab \
@semantic-release/git \
@semantic-release/changelog \
@semantic-release/exec \
semantic-release \
semantic-release-docker \
re2 \
renovate \
&& curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl \
&& chmod u+x kubectl && mv kubectl /bin/kubectl \
&& rm -rf /var/lib/apt/lists/* /var/cache/apk/* /usr/share/man /tmp/*
