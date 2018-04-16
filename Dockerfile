FROM escaletech/alpine3.7-php7.2-fpm:latest as builder

MAINTAINER Escale Tech <escaletech@escale.com.br>

ARG ACF_PRO_KEY
ENV ACF_PRO_KEY=$ACF_PRO_KEY

COPY . .

ENTRYPOINT ["php-fpm"]