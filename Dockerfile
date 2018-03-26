FROM nginx

RUN apt-get update
RUN apt-get install -y php-cli
RUN apt-get install -y php-fpm

ADD /sites-available/app.com /etc/nginx/sites-available/app.com

COPY index.php /var/www/html/

RUN ln -s /etc/nginx/sites-available/app.com /etc/nginx/sites-enabled/

WORKDIR /var/www/html

CMD ["service", "nginx", "restart"]

EXPOSE 8080