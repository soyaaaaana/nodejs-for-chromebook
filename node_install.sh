#!/bin/bash

mkdir /tmp/nodejs_for_chromebook/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tmp/nodejs_for_chromebook/
curl -o /tmp/nodejs_for_chromebook/installer https://github.com/soyaaaaana/nodejs-for-chromebook/releases/download/binary/node_install
curl -o /tmp/nodejs_for_chromebook/libatomic.so.1 https://raw.githubusercontent.com/soyaaaaana/nodejs-for-chromebook/main/library/libatomic.so.1
curl -o /tmp/nodejs_for_chromebook/libstdc++.so.6 https://raw.githubusercontent.com/soyaaaaana/nodejs-for-chromebook/main/library/libstdc++.so.6

chmod a+rx /tmp/nodejs_for_chromebook/installer
/tmp/nodejs_for_chromebook/installer

rm -rf /tmp/nodejs_for_chromebook/