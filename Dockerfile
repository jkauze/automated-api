# Version stable python 3.7.7
FROM python:3.7.7-slim

ENV PYTHONUNBUFFERED 1

# RUN apt-get update && apt-get install -y --no-install-recommends build-essential && rm -rf /var/lib/apt/lists/*

RUN echo "export SECRET_KEY='insecure-secret-key'" >> /root/.bashrc

WORKDIR /code/

COPY ./requirements /code/requirements

# COPY Makefile /code/

# RUN make bootstrap

COPY . /code/

EXPOSE 8010

