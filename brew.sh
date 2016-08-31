#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
#brew update

# Upgrade any already-installed formulae
#brew upgrade


# GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew install coreutils
#brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
#brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --default-names


# Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
# regular bash-completion package is held back to an older release, so we get latest from versions.
#   github.com/Homebrew/homebrew/blob/master/Library/Formula/bash-completion.rb#L3-L4
#brew tap homebrew/versions
#brew install homebrew/versions/bash-completion2
#cd $(brew --prefix)/etc/bash_completion.d
#ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
#ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
#ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
brew install bash-completion
files=(docker-machine docker-machine-wrapper docker-machine-prompt)
for f in "${files[@]}"; do
    curl -L https://raw.githubusercontent.com/docker/machine/v$(docker-machine --version | tr -ds ',' ' ' | awk 'NR==1{print $(3)}')/contrib/completion/bash/$f.bash > `brew --prefix`/etc/bash_completion.d/$f
done

brew install homebrew/completions/docker-completion
brew install homebrew/completions/docker-compose-completion
#curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose > `brew --prefix`/etc/bash_completion.d/docker-compose
#brew install homebrew/completions/docker-machine-completion
brew install homebrew/completions/brew-cask-completion

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi --with-lua 
brew install tmux
brew install ctags
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

# run this script when this file changes guy.
brew install entr

# github util. imho better than hub
brew install gh


# mtr - ping & traceroute. best.
brew install mtr

# add support ntfs https://gist.github.com/crcastle/5aa97cbce28bf3ff5d1a
# manual support http://macdrug.com/free-ntfs-read-and-write-solutions-in-mac-os-x-el-capitan-or-older/
brew install Caskroom/cask/osxfuse
brew install ntfs-3g

# Install other useful binaries
brew install ack
brew install git
brew install imagemagick --with-webp
brew install node # This installs `npm` too using the recommended installation method
brew install pv
brew install rename
brew install tree
brew install zopfli
brew install ffmpeg --with-libvpx
brew install ncdu
brew install jq

brew install terminal-notifier

#brew install android-platform-tools
brew install pidcat   # colored logcat guy

brew install zsh

brew install cmake

#devel
brew install psqlodbc

# Remove outdated versions from the cellar
brew cleanup
