FROM python:3.11-slim

RUN apt-get update && apt-get install nginx -y

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/index.html /var/www/html/index.html 
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log

COPY ./src ./app
WORKDIR /app

RUN python -m venv /opt/venv && \
    /opt/venv/bin/python -m pip install pip --upgrade && \
    /opt/venv/bin/python -m pip install -r requirements.txt

RUN chmod +x config/entrypoint.sh

CMD ["./config/entrypoint.sh"]