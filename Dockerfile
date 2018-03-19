FROM alpine:3.7

RUN apk --update add mariadb mariadb-client pwgen && \
    rm -f /var/cache/apk/*

ADD docker-entrypoint.sh /usr/local/bin/

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["docker-entrypoint.sh"]
