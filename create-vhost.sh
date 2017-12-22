#!/bin/bash
VHOST_NAME="$1"
cat <<EOT > /etc/apache2/sites-available/$VHOST_NAME.conf
<VirtualHost *:80>    
  # Admin email, Server Name (domain name), and any aliases
  ServerAdmin webmaster@$VHOST_NAME
  ServerName  $VHOST_NAME
  ServerAlias www.$VHOST_NAME  
  # Index file and Document Root (where the public files are located)
  DirectoryIndex index.html index.php
  DocumentRoot /var/www/html/$VHOST_NAME/public_html  
  Options Includes
  <Directory "/var/www/html/$VHOST_NAME/public_html">
    Options Indexes FollowSymLinks MultiViews
    AllowOverride All
    Order allow,deny
    allow from all
  </Directory>
  # Log file locations
  #LogLevel warn
  ErrorLog  /var/www/html/$VHOST_NAME/log/error.log
  CustomLog /var/www/html/$VHOST_NAME/log/access.log combined
</VirtualHost>
EOT
mkdir -p /var/www/html/$VHOST_NAME
mkdir -p /var/www/html/$VHOST_NAME/public_html
mkdir -p /var/www/html/$VHOST_NAME/log
mkdir -p /var/www/html/$VHOST_NAME/backups