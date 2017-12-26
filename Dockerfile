FROM ubuntu:14.04

MAINTAINER phannh "nh314@outlook.com"

ADD . /usr/local

EXPOSE 80

RUN apt-get update -y

RUN apt-get -yqq dist-upgrade

RUN DEBIAN_FRONTEND=noninteractive apt install -yqq \
    apache2 \
    mysql-server \    
    software-properties-common \
    python-software-properties \
    curl

RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php

RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/apache2

RUN apt-get update

RUN apt-get install -yqq php5.6 \
				php7.0 \
				php7.1 \
				php5.6-mbstring \
				php5.6-mysql \
				php5.6-xml \
				php5.6-curl \
				php5.6-zip \				
				php7.0-mbstring \
				php7.0-mysql \
				php7.0-xml \
				php7.0-curl \
				php7.0-zip \				
				php7.1-mbstring \
				php7.1-mysql \
				php7.1-xml \
				php7.1-curl \
				php7.1-zip

RUN update-alternatives --set php /usr/bin/php5.6

RUN a2dismod php7.1

RUN a2enmod php5.6

CMD ["echo", "hello"]

RUN install-composer.sh

RUN install-node-js.sh

RUN install-phantom-js.sh