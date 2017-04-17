export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(osx git)

export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export LANG=en_US.UTF-8
MAIL='thog92@hotmail.fr'

# School config
if [[ $HOME == *"tguillem"* ]]
then
	export SCHOOL=1
	export BXSHARE="$HOME/opt/bochs/share/bochs"
	export HOMEBREW_CACHE="/tmp/"
	export VAGRANT_HOME=/tmp/tguillem/.vagrant.d
	export GEM_HOME=$HOME/.gem
	export PATH=$GEM_HOME/bin:$HOME/.brew/bin:$HOME/opt/bochs/bin:/usr/local/bin:$PATH
	alias header='vi $1 -c Stdheader -c x'
	alias dodo='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
	MAIL='tguillem@student.42.fr'
fi
export MAIL

alias hsize='du -s * | sort -rn | cut -f2 | tr "\n" "\0" | xargs -0 -I {} du -sh "{}"'
alias isize='du -s .* | sort -rn | cut -f2 | tr "\n" "\0" | xargs -0 -I {} du -sh "{}"'
alias vi='nvim'
alias vim='nvim'
source "$HOME/.kiex/scripts/kiex"
source /home/thog/erlang/R18/activate
source $HOME/.kiex/elixirs/elixir-1.3.4.env
