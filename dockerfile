FROM alpine:latest

RUN apk update && \
    apk add apache2 && \
    rm -rf /var/cache/apk/*

COPY index.html /var/www/localhost/htdocs/

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]