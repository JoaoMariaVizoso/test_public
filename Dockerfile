# Use an official base image as a starting point
FROM ubuntu:20.04

# Create a directory inside the container
WORKDIR /app

# Copy a local file from your host machine into the container
COPY /org /app/


