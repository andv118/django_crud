#!/usr/bin/env bash
set -e

cd /home/ec2-user/www/django-crud
source /home/ec2-user/www/django-crud/venv/bin/activate

# migrate DB
echo ">>> Running migrate..."
python3 manage.py migrate --noinput

# collect static files
echo ">>> Collect static..."
python3 manage.py collectstatic --noinput