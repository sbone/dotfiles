#!/bin/bash

echo "Symlinking dotfiles..."


ln -s $HOME/.dotfiles/bash_profile.symlink $HOME/.bash_profile
ln -s $HOME/.dotfiles/bashrc.symlink $HOME/.bashrc

ln -s $HOME/.dotfiles/ackrc.symlink $HOME/.ackrc

ln -s $HOME/.dotfiles/gemrc.symlink $HOME/.gemrc

ln -s $HOME/.dotfiles/tmux/tmux.conf.symlink $HOME/.tmux.conf

ln -s $HOME/.dotfiles/vim/vimrc.symlink $HOME/.vimrc
ln -s $HOME/.dotfiles/vim/vim.symlink $HOME/.vim

ln -s $HOME/.dotfiles/git/gitconfig.symlink $HOME/.gitconfig
ln -s $HOME/.dotfiles/git/gitignore.symlink $HOME/.gitignore
ln -s $HOME/.dotfiles/git/githelpers.symlink $HOME/.githelpers