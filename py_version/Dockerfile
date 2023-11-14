# # Use a base image with the necessary tools and libraries
# FROM ubuntu:22.04

# # Update the package list and install required tools
# RUN apt-get update -y && apt-get install -y wget tar build-essential

# # Download Python source code
# RUN wget https://www.python.org/ftp/python/3.11.0/Python-3.11.0.tgz && \
#     tar -xzf Python-3.11.0.tgz && \
#     cd Python-3.11.0 && \
#     ./configure --enable-optimizations && \
#     make install

# # Cleanup unnecessary files
# RUN rm -rf Python-3.11.0 Python-3.11.0.tgz

# # # Add the DeadSnakes PPA for the desired Python version
# RUN add-apt-repository -y ppa:deadsnakes/ppa

# # # Set the DEBIAN_FRONTEND to noninteractive and install Python
# RUN DEBIAN_FRONTEND="noninteractive" apt-get -y --no-install-recommends install python3.11

# # # Remove package lists to save space
# RUN rm -rf /var/lib/apt/lists

# # # Update alternatives to set Python as the default version
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.11 1

# # # Install pip for the selected Python version
# RUN curl -sS https://bootstrap.pypa.io/pip/3.11/get-pip.py | python3.11


# # Set up the entry point, e.g., to start a Python shell
# CMD ["python3"]

# Use a base image with minimal OS and package manager
FROM debian:bullseye-slim

# Set non-interactive mode during the build
ARG DEBIAN_FRONTEND=noninteractive

# Update package lists and install necessary tools
RUN apt-get update -y && \
    apt-get -y --no-install-recommends install \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install the latest version of Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

# Verify Node.js and npm installation
RUN node -v && npm -v

# Set the working directory inside the container
WORKDIR /usr/src/app

# Command to run your application
CMD ["npm", "start"]

