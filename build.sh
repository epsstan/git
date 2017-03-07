#!/bin/bash

GIT_SRC_DIR=`pwd`
GIT_INSTALL_DIR=`pwd`/../git-install
CURL_INSTALL_DIR=/usr/local/opt/curl/
OPENSSL_INSTALL_DIR=/usr/local/opt/openssl

configure()
{
    cd $GIT_SRC_DIR
    make clean
    make configure
    ./configure --prefix=$GIT_INSTALL_DIR --with-curl=$CURL_INSTALL_DIR --with-openssl=$OPENSSL_INSTALL_DIR

}

build()
{
    cd $GIT_SRC_DIR
    make all
    make install
}

$*
