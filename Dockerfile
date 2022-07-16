FROM debian:bullseye-slim

RUN set -e; \
	apt-get update; \
	apt-get -y upgrade; \
	:

RUN apt-get update; \
	apt-get -y --no-install-recommends install \
		acpica-tools \
		bc \
		bison \
		build-essential \
		ca-certificates \
		cpio \
		device-tree-compiler \
		dosfstools \
		e2fsprogs \
		e2tools \
		file \
		flex \
		g++ \
		gcc \
		gettext-base \
		git \
		kmod \
		libc6-dev \
		libssl-dev \
		make \
		mtools \
		p7zip-full \
		parted \
		python \
		python3 \
		python3-distutils \
		qemu-system-arm \
		rsync \
		squashfs-tools \
		sudo \
		u-boot-tools \
		unzip \
		uuid-dev \
		vim \
		wget \
		xz-utils \
		;

# build environment
env CP_NUM=1
env BOARD_CONFIG=1
env EMAIL=cn913x_build@localhost
env FORCE_UNSAFE_CONFIGURE=1

WORKDIR /work
ENTRYPOINT ["/bin/bash", "runme.sh"]
