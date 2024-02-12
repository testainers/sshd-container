FROM alpine:${ALPINE_VERSION:-3.19}

RUN apk add --no-cache openssh sshpass

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
