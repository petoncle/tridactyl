FROM node:19-slim
WORKDIR /tridactyl
RUN apt-get update && \
    apt-get install -y software-properties-common && apt-get update && \
    add-apt-repository -y ppa:git-core/ppa && \
    apt-get install -y python3 git build-essential && rm -rf /var/lib/apt/lists/*

#FROM ubuntu:22.04
#RUN apt-get update &&  \
#    # Necessary for getting the last version of git. Otherwise git is broken: gnutls_handshake() failed: The TLS connection was non-properly terminated.
#    apt-get install -y software-properties-common && apt-get update && \
#    add-apt-repository -y ppa:git-core/ppa && apt-get install -y \
#    curl \
#    python3 \
#    git \
#    # Installs make.
#    build-essential \
#    ca-certificates \
#    && rm -rf /var/lib/apt/lists/*
#RUN curl -fsSL https://deb.nodesource.com/setup_19.x | bash -
#RUN apt-get install -y nodejs
## Verify Node and NPM installations
#RUN node --version
#RUN npm --version
## Enable yarn
#RUN corepack enable
## Set the working directory inside the container
#WORKDIR /tridactyl

# docker build -t tridactyl-builder:latest .

# docker run --rm -v /$(pwd -W):/tridactyl tridactyl-builder:latest sh -c "yarn install && yarn run build"
# Can be run outside docker: yarn run run