FROM php:fpm

RUN docker-php-ext-install pdo pdo_mysql
RUN apt-get update \
&& apt-get install -y libzip-dev \
&& docker-php-ext-install zip
RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN apt update
RUN apt install -y git
# ENV COMPOSER_ALLOW_SUPERUSER=1
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# RUN composer require ezyang/htmlpurifier