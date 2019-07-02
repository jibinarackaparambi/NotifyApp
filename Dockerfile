FROM python:3.6-alpine
MAINTAINER jbinarackaparambil

ENV PYTHONUNBUFFERED 1

COPY .requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /NotifyApp
WORKDIR /NotifyApp
COPY ./NotifyApp /NotifyApp

RUN adduser -D user
USER user
