#!/bin/bash

apt install -y apache2 mysql-server
mysql_secure_installation
apt install -y php libapache2-mod-php php-mysql

