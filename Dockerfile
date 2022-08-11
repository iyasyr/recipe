FROM python:3.9.0-alpine
MAINTAINER Yasyr

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY . .

RUN adduser -D user
USER user
