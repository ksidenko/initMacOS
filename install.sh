!# /usr/bin/env bash

git clone https://github.com/vovkasm/input-source-switcher.git
cd input-source-switcher
mkdir build && cd build
cmake ..
make
make install

