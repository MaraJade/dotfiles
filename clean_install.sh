#!/bin/bash
# Install the basics
apt-get update
apt-get -y upgrade
apt-get -y install \
  ack \
  arandr \
  autorandr \
  curl \
  deja-dup \
  feh \
  flatpack \
  git \
  i3 \
  keychain \
  openjdk-8-jdk \
  openssh-server \
  stow \
  synergy \
  # terminator \
  thefuck \
  tldr \
  vim-gtk \
  xclip
apt-get -y autoremove

# Install kitty terminal
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
cd ~/.local
stow -v kitty.app
cd ~
# # Create a symbolic link to add kitty to PATH (assuming ~/.local/bin is in your system-wide PATH)
# ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
# # Place the kitty.desktop file somewhere it can be found by the OS
# cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
# # If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
# cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
# # Update the paths to the kitty and its icon in the kitty.desktop file(s)
# sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
# sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop

# Set up configs
git clone git@github.com:MaraJade/bash-it.git ~/.bash_it
~/.bash_it/install.sh

git clone git@github.com:MaraJade/vimrc.git .vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

mkdir -p projects
cd projects
git clone git@github.com:MaraJade/dotfiles.git
cd dotfiles

crontab crontabs/cron

# Stow all the things!
export STOW_DIR=/home/marajade/
stow user_scripts -t /usr/local/bin/
stow firefox -t ~/snap/firefox/common/
stow config -t ~/.config
stow feh
stow pictures
stow curl
stow git
