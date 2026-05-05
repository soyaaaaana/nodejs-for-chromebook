#!/bin/bash

ARCH=$(uname -m)

if [ "$ARCH" = "aarch64" ]; then
  URL_ARCH="arm64"
elif [ "$ARCH" = "x86_64" ]; then
  URL_ARCH="x64"
else
  echo "Unsupported architecture: $ARCH"
  exit 1
fi

mkdir /usr/local/nodejs_for_chromebook/ 2>/dev/null
curl -L -o /usr/local/nodejs_for_chromebook/installer https://github.com/soyaaaaana/nodejs-for-chromebook/releases/download/binary/node_install_${URL_ARCH} 2>/dev/null

chmod a+rx /usr/local/nodejs_for_chromebook/installer 2>/dev/null
/usr/local/nodejs_for_chromebook/installer

rm -rf /usr/local/nodejs_for_chromebook/