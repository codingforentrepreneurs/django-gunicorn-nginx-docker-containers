#!/bin/bash
RUN_PORT="8000"

/opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/gunicorn cfehome.wsgi:application --bind "0.0.0.0:${RUN_PORT}" --daemon --access-logfile /dev/stdout --capture-output --log-level info

nginx -g 'daemon off;error_log /dev/stdout info;'