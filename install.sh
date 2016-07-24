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

curl -L https://raw.githubusercontent.com/docker/docker/master/contrib/completion/bash/docker > .docker-completion.sh && chmod +x .docker-completion.sh
lnif "$source_path/.docker-completion.sh" "$target_path/.docker-completion.sh"

curl -L https://raw.githubusercontent.com/docker/compose/1.7.0/contrib/completion/bash/docker-compose > .docker-compose-completion.sh && chmod +x .docker-compose-completion.sh
lnif "$source_path/.docker-compose-completion.sh" "$target_path/.docker-compose-completion.sh"
