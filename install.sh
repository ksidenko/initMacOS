#!/usr/bin/env bash

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
    ret="$?"
}

source_path="$HOME/initMacOS"
target_path="$HOME"

lnif "$source_path/.bash_profile" "$target_path/.bash_profile"
