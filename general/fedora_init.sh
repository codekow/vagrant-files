#!/bin/bash

update() {
  dnf makecache
  dnf -y upgrade
}

install_tools() {
  dnf -y install \
    byobu \
    curl \
    git \
    nfs-utils
}

update
install_tools
