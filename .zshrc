export PATH=$PATH:/Applications/veonim.app/Contents/MacOS
export TERM="xterm-256color"
bindkey -v
##############################
# My super awesome zshrc.    #
##############################

# Environment and shell options.
#

# setopt INC_APPEND_HISTORY SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_ALL_DUPS HIST_REDUCE_BLANKS HIST_IGNORE_SPACE HIST_NO_STORE HIST_VERIFY
# setopt EXTENDED_HISTORY HIST_SAVE_NO_DUPS HIST_EXPIRE_DUPS_FIRST HIST_FIND_NO_DUPS APPEND_HISTORY
# setopt CORRECT MENUCOMPLETE ALL_EXPORT
# setopt   notify globdots correct pushdtohome cdablevars autolist
# setopt   correctall autocd recexact longlistjobs
# setopt   autoresume histignoredups pushdsilent
# setopt   autopushd pushdminus extendedglob rcquotes mailwarning
# unsetopt bgnice autoparamslash

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

plugins=(
  web-search
  zsh-autosuggestions
  emoji
)

ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/commands.sh
source $ZSH/custom/aliases.sh
source $ZSH/custom/themes/my_custom.zsh-theme

# Source Prezto.
# if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  # source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# fi

# Customize to your needs...
