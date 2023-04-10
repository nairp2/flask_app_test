# syntax=docker/dockerfile:1

FROM python:3.9.16-slim-buster

RUN yum install net-tools -y
RUN yum install httpd -y
RUN yum install python3 -y

WORKDIR /app
COPY . /app

RUN pip install -U flask

ENTRYPOINT [ "python", "app.py"]

EXPOSE 8000 8000