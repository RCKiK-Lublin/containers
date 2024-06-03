FROM dunglas/frankenphp:1.1.5-php8.3.7

RUN set -xe \
 && install-php-extensions opcache pdo_pgsql gd decimal bcmath intl zip \
 && apt-get update && apt-get install postgresql-client-15 -y && rm -rf /var/lib/apt/lists/* \
 && setcap -r /usr/local/bin/frankenphp

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /config/Caddyfile

HEALTHCHECK NONE

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["run", "--config", "/config/Caddyfile", "--adapter", "caddyfile"]

EXPOSE 8443
