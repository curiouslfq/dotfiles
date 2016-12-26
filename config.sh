#!/bin/bash
for i in zshrc vimrc tmux.conf; do
	ln -fs $(realpath $i) ~/.$i;
done
cat gitconfig.template >> ~/.gitconfig
