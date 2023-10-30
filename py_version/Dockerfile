# Use a base image with the necessary tools and libraries
FROM ubuntu:22.04

# Update the package list and install required tools
RUN apt-get update -y && apt-get install -y wget tar build-essential

# Download Python source code
RUN wget https://www.python.org/ftp/python/3.11.0/Python-3.11.0.tgz && \
    tar -xzf Python-3.11.0.tgz && \
    cd Python-3.11.0 && \
    ./configure --enable-optimizations && \
    make install

# Cleanup unnecessary files
RUN rm -rf Python-3.11.0 Python-3.11.0.tgz

# Set up the entry point, e.g., to start a Python shell
CMD ["python3"]
