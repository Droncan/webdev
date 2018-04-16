#!/usr/bin/env bash

apt-get update && apt-get upgrade -y
#install apache2
apt-get install apache2 libapache2-mod-php7.0 -y

#install php
apt-get install php -y
apt-get install php7.0.mysql
apt-get install composer -y

#install Mysql5.6
apt-get install mysql-client mysql-common -y