ARG APP_NAME

FROM php:7.4-apache

RUN mkdir /src/$APP_NAME/ \
    apt-get --no-cache update && apt-get install --no-cache mysqli nano git vim curl

WORKDIR /src/$APP_NAME/

COPY ../ ./

EXPOSE 80
