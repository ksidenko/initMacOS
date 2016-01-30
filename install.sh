#!/usr/bin/env bash

# Install fink http://www.finkproject.org/download/srcdist.php

xcode-select --install
sudo xcodebuild -license

curl -L http://downloads.sourceforge.net/fink/fink-0.39.2.tar.gz > fink-lastversion.tar.gz
tar -xvf fink-lastversion.tar.gz
cd fink-lastversion
./bootstrap

/sw/bin/pathsetup.sh

fink selfupdate-rsync
fink index -f

