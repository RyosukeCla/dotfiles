#!/bin/bash

DIR=$(cd $(dirname $0); pwd)
TMP_DIR=${DIR}/tmp

mkdir -p $TMP_DIR
curl -L https://dl.google.com/go/go1.13.5.darwin-amd64.tar.gz -o $TMP_DIR/go1.13.5.darwin-amd64.tar.gz
cd $TMP_DIR
tar zxvf $TMP_DIR/go1.13.5.darwin-amd64.tar.gz
