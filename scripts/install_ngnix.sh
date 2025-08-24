#!/usr/bin/env bash
set -e

# Copy config nginx
echo ">>> Install Nginx..."
sudo cp /home/ec2-user/www/django-crud/deploy/nginx/default.conf /etc/nginx/conf.d/default.conf


# Test cấu hình, restart Nginx
echo ">>> Restart Nginx config..."
nginx -t
sudo systemctl restart nginx




