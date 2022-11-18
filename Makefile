build:
	docker build -t django-nginx -f Dockerfile .

run:
	docker run -p 8000:80 -e PORT=8000 --name django-nginx --rm django-nginx 

stop:
	docker stop django-nginx

logs:
	docker logs -f django-nginx