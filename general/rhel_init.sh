#!/bin/bash

update() {
  dnf makecache
  dnf -y upgrade
}

get_public_ip() {
  ip add show dev enp0s8 | grep inet
}

install_tools() {
  dnf -y install epel-release
  dnf -y install \
    bash-completion \
    byobu \
    curl \
    git \
    nfs-utils \
    usbutils \
    udisks2
}

#update
get_public_ip
install_tools
