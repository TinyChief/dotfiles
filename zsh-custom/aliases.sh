# BECAUSE ME LAZY
alias v="nvim"
alias cfi="nvim ~/.config/i3/config"
alias cfp="nvim ~/.config/polybar/config"
alias base16="~/.oh-my-zsh/custom/base16"

# ZSH CUSTOMIZING
alias cfv="vim ~/.vimrc"
alias cfz="vim ~/.zshrc"
alias cfo="vim ~/.oh-my-zsh"
alias cfa="vim ~/.oh-my-zsh/custom/aliases.sh"
alias cfc="vim ~/.oh-my-zsh/custom/commands.sh"
alias cft="vim ~/.oh-my-zsh/custom/themes/my_custom.zsh-theme"

# NPM
alias gnm="cd /usr/local/lib/node_modules"

# FILE SYSTEM
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias ..='cd ../'
alias re='source ~/.zshrc'
alias de='cd ~/Desktop'

# ZSH global aliases for piping
# Example : cat myfile.txt G pattern
alias -g G='| grep -in'
alias -g T='| tail'
alias -g L='| less'

# GIT SHORTCUTS
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gh="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias go="git checkout"
alias gb="git branch"
alias gd="git diff"

#PRO TIPS
# Show files in folder that larger than 100 megabytes.
# ls -l ./**/*(Lm+100)

# Plugin's aliases
# alias google='web_search google'
# alias yandex='web_search yandex'
