#!/bin/bash

DOT_DIR="$HOME/.config/ryosuke-dotfiles"
TMP_DIR=${DOT_DIR}/tmp

mkdir -p $TMP_DIR
curl -L https://go.dev/dl/go1.24.2.darwin-arm64.tar.gz -o $TMP_DIR/go1.24.2.darwin-arm64.tar.gz
cd $TMP_DIR
if [ -d $TMP_DIR/go ]; then rm -rf $TMP_DIR/go; fi
tar zxvf $TMP_DIR/go1.24.2.darwin-arm64.tar.gz

echo "go is installed to ${TMP_DIR}/go/bin/go"
echo "append this line to your zshrc"
echo "  export GOPATH=\"\$HOME/go\""
