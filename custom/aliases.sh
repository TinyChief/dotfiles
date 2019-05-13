# ZSH CUSTOMIZING
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias alist="code ~/.oh-my-zsh/custom/aliases.sh"
alias clist="code ~/.oh-my-zsh/custom/commands.sh"
alias theme="code ~/.oh-my-zsh/custom/themes/my_custom.zsh-theme"
alias customize="alist & clist & theme & zshconfig"

# NPM
alias gnm="cd /usr/local/lib/node_modules"

# FILE SYSTEM
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias ..='cd ../'
alias re='source ~/.zshrc'
alias de='cd ~/desktop'

# ZSH global aliases for piping
# Example : cat myfile.txt G pattern
alias -g G='| grep -in'
alias -g T='| tail'
alias -g L='| less'

# PLAY WITH CPP
alias cpp='clang++ -std=c++11 -stdlib=libc++ main.cpp -o ./a.out && ./a.out'
alias rcpp='./a.out'

# GIT SHORTCUTS
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push origin"
alias gh="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias go="git checkout"
alias gb="git branch"

# CREATE DAY WRITINGS
alias cdw="cd ~/desktop/lw/ && sh doc.sh"

# OTHERS
alias hsd="http-server dist"

# PYTHON
alias actenv="source env/bin/activate"

#PRO TIPS
# Show files in folder that larger than 100 megabytes.
# ls -l ./**/*(Lm+100)

# Plugin's aliases
# alias google='web_search google'
# alias yandex='web_search yandex'