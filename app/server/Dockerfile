FROM dunglas/frankenphp:1.7.0-php8.4.7

RUN install-php-extensions opcache pdo_pgsql gd bcmath intl zip

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /config/Caddyfile

HEALTHCHECK NONE

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["run", "--config", "/config/Caddyfile", "--adapter", "caddyfile"]

EXPOSE 8080
