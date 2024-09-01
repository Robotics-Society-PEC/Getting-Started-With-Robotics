# Use the official Ubuntu as the base image
FROM ubuntu:22.04

# Set environment variables to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list, install necessary packages, and clean up
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    nano \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Create a new user
ARG USERNAME=myuser
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers


# Switch to the new user
USER $USERNAME

# Create a directory called workspace and set it as the working directory
RUN mkdir -p /home/$USERNAME/workspace

# Set the working directory to the new workspace
WORKDIR /home/$USERNAME/workspace

# Set the default command to run when the container starts
CMD ["/bin/bash"]
