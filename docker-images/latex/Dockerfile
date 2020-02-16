FROM ubuntu:latest
LABEL maintainer="Ivan Savushkin <ivan@savushkin.me>"

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

COPY fonts/* /usr/share/fonts/

RUN echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections && \
    apt-get update && \
    apt-get install -y \
        texlive \
        texlive-base \
        texlive-lang-english \
        texlive-lang-german \
        texlive-lang-cyrillic \
        texlive-fonts-extra \
        texlive-science \
        texlive-latex-base \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-xetex \
        texlive-luatex \
        latexmk && \
    apt-get install -y --reinstall ttf-mscorefonts-installer && \
    fc-cache -f -v && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    echo "Available fonts:" && \
    fc-list -f '%{file}\n' | sort
