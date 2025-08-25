#!/usr/bin/env bash
set -e

echo ">>> Stop service..."
sudo systemctl stop gunicorn
sudo systemctl stop nginx