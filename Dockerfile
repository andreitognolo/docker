FROM alpine:3.4

RUN apk add --no-cache --update ca-certificates

COPY push_last_image.sh /app
COPY migrations/ /app/foo/migrations/
WORKDIR /app
EXPOSE 8081
ENTRYPOINT [ "./docker-entrypoint.sh" ]
