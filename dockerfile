FROM ubuntu:24.04

RUN apt update && \
    apt install -y apache2 && \
    apt clean

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
