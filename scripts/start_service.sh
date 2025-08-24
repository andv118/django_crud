#!/usr/bin/env bash
set -e

echo ">>> Start service..."
# Start theo thứ tự: Gunicorn trước (để Nginx proxy không 502), rồi Nginx
systemctl restart gunicorn
systemctl restart nginx

# Kiểm tra nhanh trạng thái (không bắt buộc)
systemctl --no-pager --full status gunicorn || true
systemctl --no-pager --full status nginx || true