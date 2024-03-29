FROM php:7-fpm

COPY ./docker/install /install

RUN chmod -R +x /install && apt-get update
RUN bash /install/install-basics.sh && \
    bash /install/install-composer.sh && \
    bash /install/install-versionning.sh && \
    bash /install/install-php-extension.sh