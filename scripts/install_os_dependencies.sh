#!/usr/bin/env bash
# yum install -y python-psycopg2 postgresql libncurses5-dev libffi libffi-devel libxml2-devel libxslt-devel libxslt1-dev
# yum install -y postgresql-libs postgresql-devel python-lxml python-devel gcc patch python-setuptools
# yum install -y gcc-c++ flex epel-release nginx supervisor
# /etc/init.d/nginx stop

# Cập nhật gói
sudo yum update -y  

echo ">>> Install package..."

# Cài đặt Python, pip, venv
sudo yum install -y python3 python3-pip python3-venv
sudo dnf install -y python3-pip

# Cài Nginx
sudo yum install -y nginx

# Bật nginx auto-start trên boot
systemctl enable nginx