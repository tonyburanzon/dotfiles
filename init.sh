#!/bin/bash
cp .zsh* ~
cp .bash* ~
cp .tmux.conf ~


if [[ ! -d ~/.local ]]; then
  mkdir ~/.local
fi

cp -r bin ~/.local

if [[ ! -d ~/.config ]]; then
  mkdir ~/.config
fi

if [[ ! -d ~/.config/i3 ]]; then
  mkdir ~/.config/i3
fi

cp -r nvim i3 ~/.config
