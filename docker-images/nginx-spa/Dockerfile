FROM nginx:stable-alpine

LABEL maintainer="Ivan Savushkin <ivan@savushkin.me>"

COPY conf/default.conf /etc/nginx/conf.d/
RUN rm -rf /usr/share/nginx/html/ && mkdir -p /usr/share/nginx/html/
