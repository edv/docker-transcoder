FROM erikdevries/baseimage:latest
MAINTAINER Erik de Vries <docker@erikdevries.nl>

RUN apk -U update && \
    apk -U upgrade && \
    apk -U add --no-cache \
        npm \
        ffmpeg \
    && \
    npm install -g chokidar-cli && \
    rm -rf /tmp/src && \
    rm -rf /var/cache/apk/*

# Copy root filesystem
COPY rootfs /

RUN chmod +x /convert.sh
