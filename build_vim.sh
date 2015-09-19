#!/bin/bash

sudo apt-get -y remove vim vim-runtime vim-tiny vim-common vim-gui-common

sudo apt-get -y update
sudo apt-get -y install git gcc g++ make autoconf pkg-config cmake build-essential

sudo apt-get -y install libncurses5-dev libgnome2-dev libgnomeui-dev \
      libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
      libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
      ruby-dev git

sudo apt-get -y install lua5.1 liblua5.1-0-dev

git clone https://github.com/vim/vim.git

cd vim

./configure --with-features=huge \
              --enable-multibyte \
              --enable-rubyinterp \
              --enable-pythoninterp \
              --with-python-config-dir=/usr/lib/python2.7/config \
              --enable-perlinterp \
              --enable-luainterp \
              --enable-gui=gtk2 --enable-cscope --prefix=/usr && \
make VIMRUNTIMEDIR=/usr/share/vim/vim74 && \
sudo make install



