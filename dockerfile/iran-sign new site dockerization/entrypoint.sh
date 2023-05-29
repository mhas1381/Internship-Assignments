#!/bin/sh

python manage.py migrate --no-input
python manage.py compilemessages --no-input
python manage.py collectstatic --no-input

gunicorn irsign_website_backend.wsgi --bind 0.0.0.0:8000