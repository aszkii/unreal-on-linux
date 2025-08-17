
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    xdg-user-dirs \
    ca-certificates \
    libvulkan1 \
    vulkan-tools \
    libx11-6 \
    libxcb1 \
    libxrandr2 \
    libgl1

RUN apt-get install -y \
    nvidia-driver-550

RUN useradd -m -s /bin/bash runtime
USER runtime
WORKDIR /home/runtime

RUN mkdir -p /tmp/runtime-dir
ENV XDG_RUNTIME_DIR=/tmp/runtime-dir