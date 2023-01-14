FROM python:3.9.16-slim-bullseye

ENV MATTER=canned

USER root

RUN pip install --upgrade pip

RUN apt-get -y update && apt-get -y install nginx

COPY canned canned
COPY matter.py ./

RUN ["python", "./matter.py"]
