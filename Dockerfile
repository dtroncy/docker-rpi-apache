FROM dtroncy/rpi-alpine:3.8

LABEL maintainer="dtroncy"

RUN apk update \
    && apk upgrade \
    && apk add --no-cache apache2 \
    && rm -rf /var/cache/apk/*

# Expose port 80
EXPOSE 80

# Start httpd
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]