# Version stable python 3.7.7
FROM python:buster

ENV PYTHONUNBUFFERED 1

WORKDIR /code/

# Only make bootstrap when requeriments change
COPY requirements/ /code/

RUN make bootstrap

COPY . /code/

EXPOSE 8010