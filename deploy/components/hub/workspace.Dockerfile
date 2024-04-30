FROM php:8.3-fpm-alpine3.17

USER root

WORKDIR /code

COPY /hub /code

COPY deploy/components/hub/setup.sh .
RUN chmod u+x /code/setup.sh && /code/setup.sh


USER app

EXPOSE 9000

CMD ["php-fpm"]