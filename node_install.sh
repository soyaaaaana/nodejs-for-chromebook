#!/bin/bash

mkdir /usr/local/nodejs_for_chromebook/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/nodejs_for_chromebook/
curl -L -o /usr/local/nodejs_for_chromebook/installer https://github.com/soyaaaaana/nodejs-for-chromebook/releases/download/binary/node_install
curl -L -o /usr/local/nodejs_for_chromebook/libatomic.so.1 https://raw.githubusercontent.com/soyaaaaana/nodejs-for-chromebook/main/library/libatomic.so.1
curl -L -o /usr/local/nodejs_for_chromebook/libstdc++.so.6 https://raw.githubusercontent.com/soyaaaaana/nodejs-for-chromebook/main/library/libstdc++.so.6

chmod a+rx /usr/local/nodejs_for_chromebook/installer
/usr/local/nodejs_for_chromebook/installer

rm -rf /usr/local/nodejs_for_chromebook/