#!/bin/bash

echo "Linking .vimrc"
rm ~/.vimrc
ln ./.vimrc ~/.vimrc

echo "Linking .bashrc"
rm ~/.bashrc
ln ./.bashrc ~/.bashrc

echo "Linking .tmux.conf"
rm ~/.tmux.conf
ln ./.tmux.conf ~/.tmux.conf


