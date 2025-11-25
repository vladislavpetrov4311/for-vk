FROM php:8.2-cli-alpine

WORKDIR /app
COPY . .

RUN php -r "require 'index.php'; handler();"
