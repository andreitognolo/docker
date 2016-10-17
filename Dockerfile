FROM alpine:3.4

RUN apk add --no-cache --update ca-certificates

WORKDIR /app
COPY push_last_image.sh /app
COPY migrations/ /app/
COPY bin/linux_amd64/sms-processor /app
EXPOSE 8081

