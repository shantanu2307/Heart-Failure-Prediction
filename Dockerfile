FROM python:3.10

# Author of Dockerfile
LABEL maintainer="Shantanu Goyal"

# Working Directory of container image
WORKDIR /app

# Copy requirements file from pwd to container working directory
COPY ./requirements.txt /app/

# Install packages from requirements.txt
RUN pip3 install --no-cache-dir --upgrade pip &&\
    pip3 install --no-cache-dir -r requirements.txt 

# Copy source code from pwd to working directory
COPY ./ /app/

# Expose container port
EXPOSE 5000

# Set run command
CMD [ "python3", "application.py" ]