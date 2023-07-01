FROM alpine:3.17

RUN apk add --no-cache openssh

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]