FROM php:7.4-fpm

RUN apt-get update -y && apt-get install -y \
        libpng-dev \
        libjpeg-dev \
        libfreetype6-dev

RUN docker-php-ext-install mysqli \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) zip
