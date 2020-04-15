# Version stable python 3.7.7
FROM python:3.7.7-slim

ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y --no-install-recommends build-essential && rm -rf /var/lib/apt/lists/*

WORKDIR /code/

COPY . /code/

RUN make bootstrap

EXPOSE 8010

