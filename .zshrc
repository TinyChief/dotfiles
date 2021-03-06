export TERM="xterm-256color"
bindkey -v
##############################
# My super awesome zshrc.    #
##############################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export CONFIG=$HOME/.config
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

plugins=(zsh-autosuggestions zsh-syntax-highlighting)

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/commands.sh
source $ZSH/custom/aliases.sh

spaceinvaders

setopt no_aliases
source /usr/share/nvm/init-nvm.sh
setopt aliases

[[ -f ~/.zshrc-arco ]] && . ~/.zshrc-arco
