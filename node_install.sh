#!/bin/bash

mkdir /usr/local/nodejs_for_chromebook/ 2>/dev/null
curl -L -o /usr/local/nodejs_for_chromebook/installer https://github.com/soyaaaaana/nodejs-for-chromebook/releases/download/binary/node_install 2>/dev/null
curl -L -o /usr/local/lib/libatomic.so.1 https://raw.githubusercontent.com/soyaaaaana/nodejs-for-chromebook/main/library/libatomic.so.1 2>/dev/null
curl -L -o /usr/local/lib/libstdc++.so.6 https://raw.githubusercontent.com/soyaaaaana/nodejs-for-chromebook/main/library/libstdc++.so.6 2>/dev/null

chmod a+rx /usr/local/nodejs_for_chromebook/installer
/usr/local/nodejs_for_chromebook/installer

rm -rf /usr/local/nodejs_for_chromebook/