FROM alpine:latest

RUN echo "http://nl.alpinelinux.org/alpine/v3.3/main" > /etc/apk/repositories && apk add --update php php-phar php-ctype && rm /var/cache/apk/*

ADD twig-lint.phar /usr/bin/twig-lint

WORKDIR /src

ENTRYPOINT ["/usr/bin/twig-lint"]
CMD ["lint"]