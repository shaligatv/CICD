FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 && apt-get clean
RUN a2enmod rewrite
COPY index.html /var/www/html
EXPOSE 80
CMD ["apache2ctl","-D", "FOREGROUND"]                                                                                                                                                                                                                                                                                            
