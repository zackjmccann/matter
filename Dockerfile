FROM python:3.9.16-slim-bullseye

ENV MATTER=canned

USER root

# Update pip
RUN pip install --upgrade pip

# Install nginx
RUN apt-get -y update && apt-get -y install nginx

# Copy Contents
COPY canned canned
COPY matter.py ./

RUN apt-get update -y && \
    # Install Unzip
    apt-get install unzip -y && \
    # need wget and vim
    apt-get install wget -y && apt-get install vim -y

# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
RUN unzip terraform_0.11.11_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN terraform --version 

# Install AWS CLI
RUN pip install awscli --upgrade --user
ENV PATH=~/.local/bin:$PATH

# Adds local templates directory and contents in /usr/local/terrafrom-templates
# ADD templates /usr/local/bin/templates

RUN mkdir ~/.aws && touch ~/.aws/credentials