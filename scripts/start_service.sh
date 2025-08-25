#!/usr/bin/env bash
set -e

echo ">>> Start service..."
systemctl restart gunicorn
systemctl restart nginx

# Kiểm tra nhanh trạng thái (không bắt buộc)
systemctl status gunicorn
systemctl status nginx