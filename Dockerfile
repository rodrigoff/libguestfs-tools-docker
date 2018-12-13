FROM ubuntu:18.04

WORKDIR /root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
          libguestfs-tools \
          qemu-utils \
          linux-image-generic

ENV LIBGUESTFS_BACKEND=direct \
    HOME=/root
