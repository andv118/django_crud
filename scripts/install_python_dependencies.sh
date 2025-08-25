#!/usr/bin/env bash
set -e

# Tạo virtual environment
echo ">>> Create environment..."
python3 -m venv /home/ec2-user/www/django-crud/venv

cd /home/ec2-user/www/django-crud
source /home/ec2-user/www/django-crud/venv/bin/activate

echo ">>> Install dependencies..."
pip install --upgrade pip
pip install -r requirements.txt
