FROM alpine:3.13.5

RUN apk add --no-cache apache2

COPY . /var/www/localhost/htdocs

EXPOSE 80

CMD ["-D","FOREGROUND"]

ENTRYPOINT ["/usr/sbin/httpd"]