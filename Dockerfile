FROM python:3.9.16-slim-bullseye

# Set Environment Variables
ENV MATTER=canned

USER root

RUN pip install --upgrade pip

RUN apt-get -y update && apt-get -y install nginx
