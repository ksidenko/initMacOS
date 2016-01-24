#!/bin/bash

curl https://raw.githubusercontent.com/ksidenko/spf13-vim/3.0-new/bootstrap.sh -L > spf13-vim.sh && sh spf13-vim.sh

# install tmux plugin mnager
# https://github.com/tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Prepare for xkbswitch vim plugin
curl https://github.com/myshov/xkbswitch-macosx/raw/master/bin/xkbswitch -L > xkbswitch
chmod +x xkbswitch
mv xkbswitch /usr/local/bin/

curl https://github.com/myshov/libxkbswitch-macosx/raw/master/bin/libxkbswitch.dylib -L > libxkbswitch.dylib
mv libxkbswitch.dylib /usr/local/lib/
