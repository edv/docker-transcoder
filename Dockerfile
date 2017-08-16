FROM alpine:3.6
MAINTAINER Erik de Vries <docker@erikdevries.nl>

RUN apk -U update && \
    apk -U upgrade && \
    apk -U add \
        git \
        inotify-tools \
        ffmpeg \
    && \
    rm -rf /tmp/src && \
    rm -rf /var/cache/apk/*

VOLUME ["/input", "/output"]

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
