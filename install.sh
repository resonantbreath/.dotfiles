#!/usr/bin/env bash

use_zsh() {
  zsh=`which zsh`
  if [ $SHELL != $zsh ]
  then
    chsh -s $zsh
  fi
}

link_configuration() {
  ls | while read f; do
    [ $f == "README.md" ] ||
    [ $f == "install.sh" ] ||

    ln -vsfn "$PWD/$f" "$HOME/.$f"
  done
}

vundle_install() {
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  vim +BundleInstall +qall
}

use_zsh
link_configuration
vundle_install
