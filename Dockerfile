FROM python:3.9.16-slim-bullseye

# Set Environment Variables
ENV MATTER=canned

# Install Python
USER root
RUN apt-get install -y nginx
