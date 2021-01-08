FROM ubuntu:20.04

# USAGE: docker run -it -v ~/raspberry/hello:/build mitchallen/pi-cross-compile
RUN apt-get update && apt-get install -y tzdata
ENV TZ              Asia/Tokyo 

RUN apt-get update && apt-get install -y \
         bc \
         bison \
         flex \
         libssl-dev \
         make \
         libc6-dev \
         libncurses5-dev \
         kmod \
         crossbuild-essential-armhf \
         && rm -rf /var/lib/apt/lists/*

ENV BUILD_FOLDER    /work
ENV KERNEL          kernel
ENV ARCH            arm
ENV CROSS_COMPILE   arm-linux-gnueabihf-

WORKDIR ${BUILD_FOLDER}

ENTRYPOINT [ "/usr/bin/make" ]
# CMD ["/bin/bash", "-c", "make", "-f", "${BUILD_FOLDER}/Makefile"]
# CMD ["make", "clean"]