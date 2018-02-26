#!/bin/bash

dir=~/Projects/dotFiles
files="vimrc bashrc xinitrc Xdefaults"
for file in $files; do
	echo "Removing existing dotfiles..."
	rm ~/.$file
	echo "creating symlinks.."
	ln -s $dir/$file ~/.$file
done
