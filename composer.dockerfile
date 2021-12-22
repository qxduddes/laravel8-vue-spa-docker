FROM composer:2

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

WORKDIR /var/www/html

COPY ./src/api/composer.* ./

RUN composer install

#WORKDIR /var/www/html