# Yamdb
![example workflow name](https://github.com/ayztuva/yamdb_final/workflows/CI/badge.svg)

Yamdb is literally clear Yatube API

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

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

### Installing and deployment

In project directory you need to make dot-env file with next variables:

```
DB_ENGINE=django.db.backends.postgresql
DB_NAME=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=<your_password>
DB_HOST=db
DB_PORT=5432
```

Then create docker-compose.yaml file.

The project ('web') in 'service' should look like this:

```
  ...

  web:
    image: ayztuva/yamdb:v0.1
    volumes:
      - staticfiles:/code/static
    ports:
      - "8000:8000"
    depends_on: 
      - "db"
    env_file: 
      - ./.env
```

Than just simply start the docker-compose:

```
docker-compose up
```

Now check http://127.0.0.1:8000/

## Authors

* **Evan Gribov** - *Initial work* - [ayztuva](https://github.com/ayztuva)


