
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    libvulkan1 libsdl2-2.0 libomp5 \
    vulkan-tools mesa-vulkan-drivers \
    && rm -rf /var/lib/apt/lists/*

ENV DISPLAY=

RUN useradd -m -s /bin/bash runtime
USER runtime
WORKDIR /home/runtime
