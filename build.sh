#!/usr/bin/env bash
# exit on error
set -o errexit

poetry  --no-root .

python manage.py collectstatic --no-input
python manage.py migrate