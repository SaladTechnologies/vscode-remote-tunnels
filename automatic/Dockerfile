# Base image selection
FROM docker.io/python:3.12.3
#FROM docker.io/pytorch/pytorch:2.6.0-cuda12.4-cudnn9-runtime

# Install essential utilities
RUN apt-get update && apt-get install -y curl net-tools iputils-ping 

# Upgrade pip and install Python packages
RUN pip install --upgrade pip
RUN pip install flask python-dotenv

# Install VS Code Server
RUN curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' --output vscode_cli.tar.gz
RUN tar -xf vscode_cli.tar.gz
RUN mv ./code /usr/local/bin/code
RUN rm vscode_cli.tar.gz

# Set working directory and copy application files
WORKDIR /app
COPY hello.py /app
COPY start.sh /app
RUN chmod +x /app/start.sh

# Default startup command
CMD ["./start.sh"]
# the pre-built image: docker.io/saladtechnologies/vscode-remote-tunnels:0.0.1-vscode-remote-tunnels:0.0.1-automatic
