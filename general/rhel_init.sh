#!/bin/bash

init() {
  dnf makecache
  dnf -y install python3-dnf-plugin-versionlock
  dnf versionlock kernel
  dnf -y upgrade --exclude kernel*
}

get_public_ip() {
  ip add show dev enp0s8 | grep inet
}

install_vb_guest() {
  dnf -y install gcc make perl kernel-devel kernel-headers bzip2 dkms
  [ -d /mnt/cdrom ] || mkdir -p /mnt/cdrom
  mount /dev/sr0 /mnt/cdrom
  pushd /mnt/cdrom
  ./VBoxLinuxAdditions.run
  popd
}

install_tools() {
  dnf -y install epel-release
  dnf -y install \
    bash-completion \
    byobu \
    curl \
    git \
    nfs-utils \
    rsync \
    usbutils \
    udisks2
}

init
get_public_ip
install_tools
