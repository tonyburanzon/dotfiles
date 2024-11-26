#!/bin/bash
cp .zsh* ~
cp .bash* ~
cp .tmux.conf ~


if [ ! -d "~/.local" ]; then
  mkdir ~/.local
fi

cp -r bin ~/.local

if [ ! -f "/.config" ]; then
  mkdir ~/.config
fi

cp -r nvim ~/.config
