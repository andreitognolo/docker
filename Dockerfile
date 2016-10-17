FROM alpine:3.4

RUN apk add --no-cache --update ca-certificates

WORKDIR /app
COPY docker-entrypoint.sh /app/
COPY migrations/ /app/migrations/
COPY bin/linux_amd64/sms-processor /app/
EXPOSE 8081
ENTRYPOINT [ "./docker-entrypoint.sh" ]
