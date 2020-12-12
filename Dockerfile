FROM ubuntu:18.04

# Install any needed packages specified in requirements.txt
RUN apt-get update && \
    apt-get install -yq \
    ccache \
    gperf \
    unzip \
    net-tools \
    bzip2 \
    cmake \
    minicom \
    bc \
    bison \
    flex \
    util-linux \
    dosfstools \
    e2fsprogs \
    wget \
    make \
    git \
    gdb \
    libusb-dev \
    libusb-1.0 \
    libtool \
    autotools-dev \
    automake \
    pkg-config \
    usbutils \
    scons \
    python \
    python3 \
    python3-dev \
    python-pip \
    gcc-multilib \
    libssl-dev \
    libncurses5-dev \
    libreadline-dev \
    && rm -rf /var/lib/apt/lists/*
    
RUN python -m pip install setuptools wheel aos-cube esptool pyserial

CMD [ "/bin/bash" ]
