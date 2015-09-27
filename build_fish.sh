#!/bin/bash

sudo apt-get -y update
sudo apt-get -y install libtool git gcc g++ make autoconf pkg-config cmake
sudo apt-get -y install build-essential ncurses-dev libncurses5-dev gettext

git clone https://github.com/fish-shell/fish-shell.git

cd fish-shell

autoconf && \
./configure && \
make && \
sudo make install

