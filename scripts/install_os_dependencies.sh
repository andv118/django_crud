#!/usr/bin/env bash

# Cập nhật gói
sudo yum update -y  

echo ">>> Install package..."

# Cài đặt Python, pip, venv
sudo yum install -y python3 python3-pip python3-venv
sudo dnf install -y python3-pip

# Cài Nginx
sudo yum install -y nginx