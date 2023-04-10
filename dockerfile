# syntax=docker/dockerfile:1

FROM python:3.9.16-slim-buster

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && \
    pip install --no-cache-dir \
    jenkins-job-builder \
    virtualenv

WORKDIR /app
COPY . /app

RUN pip install -U flask

EXPOSE 8000

CMD [ "python", "app.py"]