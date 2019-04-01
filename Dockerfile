FROM alpine:3.9.2

LABEL architecture="amd64/x86_64" \
    alpine-version="3.9.2" \
    mariadb-version="10.3.13"

RUN apk add --no-cache mariadb mariadb-client mariadb-server-utils pwgen && \
    rm -f /var/cache/apk/*

ADD docker-entrypoint.sh /usr/local/bin/

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["docker-entrypoint.sh"]
