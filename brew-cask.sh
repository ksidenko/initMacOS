#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup` 


# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
brew cask install spectacle
brew cask install dropbox
#brew cask install gyazo
#brew cask install onepassword
#brew cask install rescuetime
brew cask install flux
# https://github.com/toland/qlmarkdown
brew cask install qlmarkdown

# dev
brew cask install iterm2
brew cask install sublime-text
brew cask install docker-toolbox
open $(brew --prefix)/Caskroom/docker-toolbox/1.12.0/DockerToolbox-1.12.0.pkg
open https://docs.docker.com/toolbox/toolbox_install_mac/
bash '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'
#brew cask install caskroom/homebrew-versions/java6
#brew cask install phpstorm #v8.0.3
#brew cask install imagealpha
#brew cask install imageoptim

# fun
#brew cask install limechat
#brew cask install miro-video-converter
#brew cask install horndis               # usb tethering

# browsers
brew cask install google-chrome
brew cask install google-photos-backup
#brew cask install google-chrome-canary
#brew cask install firefox-nightly
#brew cask install webkit-nightly
#brew cask install chromium
#brew cask install torbrowser

# less often
#brew cask install disk-inventory-x
#brew cask install screenflow4 # 4 specifically not 5.
brew cask install vlc
#brew cask install gpgtools
#brew cask install licecap
brew cask install utorrent
brew cask install evernote
#brew cask install libreoffice
brew cask install picasa

#install R software
brew tap homebrew/science
brew install gcc
brew install Caskroom/cask/xquartz
brew install r

# Not on cask but I want regardless.

# 3Hub
# File Multi Tool 5
# Phosphor
