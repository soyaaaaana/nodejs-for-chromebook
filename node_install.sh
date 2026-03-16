#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tmp/nodejs_for_chromebook/
curl -o /tmp/nodejs_for_chromebook/installer https://raw.githubusercontent.com/soyaaaaana/nodejs-for-chromebook/main/binary/node_install
curl -o /tmp/nodejs_for_chromebook/libatomic.so.1 https://raw.githubusercontent.com/soyaaaaana/nodejs-for-chromebook/main/library/libatomic.so.1
curl -o /tmp/nodejs_for_chromebook/libstdc++.so.6 https://raw.githubusercontent.com/soyaaaaana/nodejs-for-chromebook/main/library/libstdc++.so.6

chmod a+rx /tmp/nodejs_for_chromebook/installer
/tmp/nodejs_for_chromebook/installer