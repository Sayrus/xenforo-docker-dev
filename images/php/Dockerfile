FROM php:7.4-fpm

RUN apt-get update -y && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev

RUN docker-php-ext-install mysqli && \
    docker-php-ext-configure gd --with-freetype-dir=/usr --with-jpeg-dir=/usr --with-png-dir=/usr && \
    docker-php-ext-install gd
