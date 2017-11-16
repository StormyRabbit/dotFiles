#!/bin/bash

dir=~/storage/Project/dotFiles
files="vimrc bashrc xinitrc"


for file in $files; do
	echo "Moving any existing dotfiles from home to $dir"
	mv ~.$file $dir
	echo "creating symlinks.."
	ln -s $dir/$file ~/.$file

