FROM httpd:2-alpine

RUN apk add --no-cache openssl

ENV WEBDAV_HOME=/home/webdav \
    WEBDAV_PORT=8080 \
    WEBDAV_HOST=0.0.0.0 \
    WEBDAV_AUTH_USER_FILE=/tmp/.htpasswd \
    WEBDAV_UID=1000 \
    WEBDAV_USER=webdav \
    WEBDAV_GID=100 \
    WEBDAV_GROUP=users

RUN adduser -SDH -u ${WEBDAV_GID} -G ${WEBDAV_GROUP} ${WEBDAV_USER}

COPY httpd.conf /usr/local/apache2/conf/httpd.conf

COPY webdav-foreground /usr/local/bin/webdav-foreground

CMD ["/usr/local/bin/webdav-foreground"]

USER ${WEBDAV_USER}
