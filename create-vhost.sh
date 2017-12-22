#!/bin/bash
VHOST_NAME="$1"
echo "Hello, world $VHOST_NAME!"
echo '127.0.0.1 vdns.dev' >> /etc/hosts
mkdir -p /var/www/html/$VHOST_NAME
mkdir -p /var/www/html/$VHOST_NAME/log
mkdir -p /var/www/html/$VHOST_NAME/backups