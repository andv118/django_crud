#!/usr/bin/env bash
set -e

# Tạo virtual environment
echo ">>> Create environment..."
cd /home/ec2-user/www/django-crud
python3 -m venv /home/ec2-user/www/venv
source /home/ec2-user/www/django-crud/venv/bin/activate

echo ">>> Install dependencies..."
pip install --upgrade pip
pip install -r requirements.txt
