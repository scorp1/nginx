FROM nginx

RUN apt-get update
RUN apt-get install -y php-cli
RUN apt-get install -y php-fpm

COPY index.php /var/www/html/

WORKDIR /var/www/html

EXPOSE 8080