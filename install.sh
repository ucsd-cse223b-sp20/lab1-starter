#!/bin/bash


echo "223B VM installation script -- Written by Stew"
echo "Default Install includes vim, go, make, gcc"

echo "moving to home directory"
pushd ~/
pwd

echo "installing Vim"
sudo apt install vim-gtk3

echo "installing Make"
sudo apt install make

echo "installing gcc"
sudo apt install gcc

GOVERSION="16.2"
TARNAME="go1.${GOVERSION}.linux-amd64.tar.gz"


echo "installing Go"
wget https://golang.org/dl/"$TARNAME"
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf "$TARNAME"

echo "Exporting environment variables for go"
export PATH=$PATH:/usr/local/go/bin
echo "export PATH=$PATH:/usr/local/go/bin" >> $HOME/.profile
#export GOPATH=$GOPATH:

