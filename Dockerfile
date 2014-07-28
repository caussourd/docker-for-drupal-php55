FROM ubuntu:14.04

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y apache2 php5 libapache2-mod-php5 php5-mcrypt php5-mysql php5-gd php5-intl php5-curl 

# Prepare app folder
RUN rm -rf /var/www/*

# Configure Apache
RUN a2enmod rewrite
ADD apache.conf /etc/apache2/sites-available/000-default.conf
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2/apache2 

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
