#!/usr/bin/env bash
set -e

# Copy unit file vào systemd
echo ">>> Install gunicorn..."
cp /home/ec2-user/www/django-crud/deploy/systemd/gunicorn.service /etc/systemd/system/gunicorn.service

# Reload, enable (tự bật khi reboot)
systemctl daemon-reload
systemctl enable gunicorn