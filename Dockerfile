FROM wordpress:latest

RUN rm -rf /var/www/html/wp-content/{plugins,themes}

COPY wp-content /var/www/html/wp-content


