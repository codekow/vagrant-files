#!/bin/bash

install_exfat() {
yum group install 'Development Tools'
yum install fuse-devel
cd /usr/local/src && git clone https://github.com/relan/exfat.git
cd exfat
autoreconf --install
./configure --prefix=/usr
make && make install
make clean
}

install_exfat
