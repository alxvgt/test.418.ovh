FROM php:7-fpm

COPY ./www /www
COPY ./docker/install /install
VOLUME /www
VOLUME /install

RUN chmod -R +x /install && apt-get update
RUN bash /install/install-basics.sh && \
    bash /install/install-composer.sh && \
    bash /install/install-versionning.sh && \
    bash /install/install-php-extension.sh