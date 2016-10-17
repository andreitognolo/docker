FROM alpine:3.4

RUN apk add --no-cache --update ca-certificates

RUN mkdir app; cd /app

COPY push_last_image.sh /app
COPY migrations/ /app/foo/migrations/
