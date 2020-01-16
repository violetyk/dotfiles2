#!/bin/bash

export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

brew install go
cat ./go.txt | grep -v "^#" | xargs go get -u 