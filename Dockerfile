FROM python:3.7-alpine
MAINTAINER Python App Developer

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /App
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
