#!/bin/zsh

GIT_PATH=$(pwd -P)
echo Git PATH: $GIT_PATH
echo Installing oh-my-zsh...
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
echo Preparing Vundle Installation...
ln -s $GIT_PATH/.zshrc ~/.zshrc
ln -s $GIT_PATH/.nvim ~/.nvim
ln -s ~/.nvim ~/.vim
echo Installing Vundle...
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

[[ -d ~/.config/ ]] || mkdir ~/.config/
ln -s ~/.nvim ~/.config/nvim
ln -s ~/.vim/init.vim ~/.vimrc
echo Installing vim plugins...
export DOT_INSTALL=1
source ~/.zshrc
vi -c VundleInstall -c quitall
unset DOT_INSTALL
echo Installation Finished
env zsh
