#!/bin/bash

DOT_DIR="$HOME/.config/ryosuke-dotfiles"
TMP_DIR=${DOT_DIR}/tmp

mkdir -p $TMP_DIR
curl -L https://go.dev/dl/go1.17.6.darwin-arm64.tar.gz -o $TMP_DIR/go1.17.6.darwin-arm64.tar.gz
cd $TMP_DIR
tar zxvf $TMP_DIR/go1.17.6.darwin-arm64.tar.gz

ln -s ${TMP_DIR}/go/bin/go /usr/local/bin/go

echo "symlink ${TMP_DIR}/go/bin/go to /usr/local/bin/go"
