FROM nginx:latest

# Set Environment Variables
ENV MATTER=canned

# Install Python
RUN sudo apt-get update -y
RUN sudo apt-get install -y python
