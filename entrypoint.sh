#!/bin/bash -x
python manage.py makemigrations
python manage.py migrate --no-input 
python manage.py collectstatic --no-input || exit 1
exec "$@"
