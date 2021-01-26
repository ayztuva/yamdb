#!/bin/bash -x
./wait-for-it.sh db:5432 -- echo "    DB:5432 is ready"
python manage.py migrate --no-input
python manage.py collectstatic --no-input
exec "$@"
