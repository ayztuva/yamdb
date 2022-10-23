# Yamdb
![Yamdb CI](https://github.com/vilagov/yamdb/workflows/Yamdb%20CI/badge.svg)

## Description
Web service API which allows making movies, books and music reviews.
The service collects user reviews about items in next categories: "Books", "Films", "Music". Once posted, users can leave comments and rate posted reviews. 

## Prerequisites
Before installing you need to be sure that you have installed last version of Docker Desktop in your system:

```
docker --version
```

If not, install it with your package manager.

Ubuntu example:

```
sudo apt-get update
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
```

## Deploying

### .env
In project directory you need to create dot-env file with next variables:

```
DB_ENGINE=django.db.backends.postgresql
DB_NAME=<your_database_name>
POSTGRES_USER=<your_user>
POSTGRES_PASSWORD=<your_password>
DB_HOST=db
DB_PORT=5432
```

### docker-compose.yaml file.
The project ('web') in 'service' should look like this:

```
  ...

  web:
    image: vilagov/yamdb:v0.1
    volumes:
      - staticfiles:/code/static
    ports:
      - "8000:8000"
    depends_on: 
      - "db"
    env_file: 
      - ./.env
```

Also you are able to clone this repository to your machine, make some changes if needed.  
Don't forget to add correspnding command to docker-compose.yaml file by replacing:

```
  web:
    image: vilagov/yamdb:v0.1
    ...
```

to

```
  web:
    build: .
    ...
```

### Run project
Finally run `docker-compose up` and check your server or [localhost](http://127.0.0.1/) address.

## System requirements
Ubuntu 16.^
macOS High Sierra 10.13.6 or higher

## Stack
* [Python 3.9](https://www.python.org/)
* [Django 3](https://www.djangoproject.com/)
* [Django REST](https://www.django-rest-framework.org/)
* [PostgreSQL](https://www.postgresql.org/)

## Authors
* **Evan Vesmirov** - [vesmirov](https://github.com/vesmirov)
* **Anton Shishlin** - [dzanto](https://github.com/dzanto)
* **Konstantin Malov** - [zerobubus](https://github.com/zerobubus)


