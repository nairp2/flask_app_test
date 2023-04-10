# syntax=docker/dockerfile:1

FROM python:3.9.16-slim-buster

WORKDIR /app
COPY . /app

RUN pip install -U flask
EXPOSE 8000

CMD [ "python", "app.py"]