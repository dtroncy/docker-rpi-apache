FROM dtroncy/rpi-alpine:3.8

LABEL maintainer="dtroncy"

RUN apk update \
    && apk upgrade \
    && apk add --no-cache apache2 \
    && mkdir /run/apache2 \
    && sed -i 's/^#ServerName.*/ServerName localhost/' /etc/apache2/httpd.conf \
    && rm -rf /var/cache/apk/*

# Expose port 80 and 443
EXPOSE 80 443

CMD ["-D", "FOREGROUND"]

ENTRYPOINT ["/usr/sbin/httpd"]