FROM python:3.8.5

WORKDIR /code
COPY requirements.txt /code
RUN pip install -r requirements.txt
COPY . /code

ENTRYPOINT ["./entrypoint.sh"]
CMD gunicorn api_yamdb.wsgi:application -b 0.0.0.0:8000
