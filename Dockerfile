FROM alpine:3.17

RUN apk add --no-cache openssh sshpass

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
