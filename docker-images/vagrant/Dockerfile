FROM ubuntu:19.04

LABEL maintainer="Ivan Savushkin <ivan@savushkin.me>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
&& apt-get install -y \
virtualbox \
vagrant \
&& apt-get autoclean -y \
&& apt-get autoremove -y \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
