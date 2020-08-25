FROM dtroncy/rpi-alpine:3.12.0

ARG apache_version

LABEL maintainer="dtroncy"

RUN apk update \
    && apk upgrade \
    && apk add --no-cache apache2=$apache_version \
    && sed -i 's/^#ServerName.*/ServerName localhost/' /etc/apache2/httpd.conf \
    && rm -rf /var/cache/apk/*

# Expose port 80 and 443
EXPOSE 80 443

CMD ["-D", "FOREGROUND"]

ENTRYPOINT ["/usr/sbin/httpd"]