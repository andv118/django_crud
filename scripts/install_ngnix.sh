#!/usr/bin/env bash
set -e

# Copy config nginx
echo ">>> Install Nginx..."
sudo cp /home/ec2-user/www/django-crud/deploy/nginx/default.conf /etc/nginx/conf.d/default.conf

nginx -t
sudo systemctl enable nginx
sudo systemctl restart nginx




