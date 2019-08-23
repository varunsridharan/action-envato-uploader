FROM alpine:latest

RUN apk add lftp

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /*.sh

ENTRYPOINT ["/entrypoint.sh"]