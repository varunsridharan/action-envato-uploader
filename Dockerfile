FROM varunsridharan/actions-alpine:latest

RUN apk add tree

COPY entrypoint.sh /entrypoint.sh

RUN chmod 777 entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]