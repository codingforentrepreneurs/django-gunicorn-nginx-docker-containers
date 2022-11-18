# Django, Gunicorn, & NGINX Running together within a Container
If you're running [Django](https://djangoproject.com) & [gunicorn](https://docs.gunicorn.org/) within a [Docker](https://www.docker.com) container and need to limit access to a specific domain, what do you do?

The answer? Run NGINX along side gunicorn and Django. 

The [related post](https://www.codingforentrepreneurs.com/blog/django-gunicorn-nginx-docker) will describe exactly how you do this. Let's not confuse this with running two containers but rather running nginx and gunicorn with the same container. 

To do this, we'll have Django running via gunicorn as a daemon process (i.e. background) and NGINX as a non-daemon process (i.e. non-background).

The contents in this repo are _not production-ready_ but can be modified to be production-ready by at least using environment variables, an actual production database, turning off debug mode in Django, leveraging a static files server, and likely other items that you can learn about in my course [Django Deployment Pipeline](https://www.codingforentrepreneurs.com/courses/django-deployment-pipeline/).


## [Reference Blog Post](https://www.codingforentrepreneurs.com/blog/django-gunicorn-nginx-docker)