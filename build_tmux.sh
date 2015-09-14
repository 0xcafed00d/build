#!/bin/bash

sudo apt-get -y update
sudo apt-get -y install git gcc g++ make autoconf pkg-config cmake
sudo apt-get -y install build-essential
sudo apt-get -y install libevent-dev ncurses-dev

git clone https://github.com/tmux/tmux.git

cd tmux

sh autogen.sh
./configure && \
make && \
sudo make install

echo "set-option -g default-shell \"/usr/local/bin/fish\"" >> ~/.tmux.conf
