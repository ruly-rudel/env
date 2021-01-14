# [Choice] Debian / Ubuntu version: debian-10, debian-9, ubuntu-20.04, ubuntu-18.04
ARG VARIANT=debian-10
FROM mcr.microsoft.com/vscode/devcontainers/base:dev-${VARIANT}

# Install needed packages. Use a separate RUN statement to add your own dependencies.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install tzdata \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

ENV TZ Asia/Tokyo 

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install \
         bc \
         bison \
         flex \
         libssl-dev \
         make \
         libc6-dev \
         libncurses5-dev \
         kmod \
         crossbuild-essential-armhf \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

WORKDIR /Workspace
RUN chmod 777 /Workspace
