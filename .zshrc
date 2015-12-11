# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
plugins=(osx git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export LANG=en_US.UTF-8

MAIL='thog92@hotmail.fr'
# School config
if [[ $HOME == *"tguillem"* ]]
then
	export SCHOOL=1
	export HOMEBREW_CACHE="/tmp/"
	MAIL='tguillem@student.42.fr'
fi
export MAIL
alias hsize='du -s * | sort -rn | cut -f2 | tr "\n" "\0" | xargs -0 -I {} du -sh "{}"'
alias isize='du -s .* | sort -rn | cut -f2 | tr "\n" "\0" | xargs -0 -I {} du -sh "{}"'
alias vi='nvim'
