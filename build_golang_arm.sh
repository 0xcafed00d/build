#!/bin/bash

cd $HOME

curl http://dave.cheney.net/paste/go-linux-arm-bootstrap-c788a8e.tbz | tar xj
curl https://storage.googleapis.com/golang/go1.6.src.tar.gz | tar xz

ulimit -s 1024

cd $HOME/go/src

env GO_TEST_TIMEOUT_SCALE=10 GOROOT_BOOTSTRAP=$HOME/go-linux-arm-bootstrap ./make.bash

cd $HOME

echo export PATH=\$PATH:\$HOME/go/bin >> .profile
echo export GOPATH=\$HOME/development/go >> .profile
echo export PATH=\$PATH:\$GOPATH/bin >> .profile

