###
# Aliases
###
alias ls='ls --color=auto -Fh'
alias lt='ls -ltr'
alias ll='ls -l'
alias la='ls -a'
alias grep='grep --color=auto'
alias gri='grep -i'
alias grn='grep -n'
alias h='history'
alias hsg='history -1000 | grep -i'
alias m='less'
alias mkdir='mkdir -p'
alias nj='ninja'

alias -g C='| wc -l'
alias -g G='| grep'
alias -g H='| head'
alias -g L='| less'
alias -g S='| sort'
alias -g T='| tail'

alias back='cd $OLDPWD'
alias ..='cd ..'
alias ...='cd ../..'

alias sapu='sudo apt-get update'
alias sapi='sudo apt-get install'
alias sapr='sudo apt-get remove'

alias vi='nvim'
alias vim='nvim -p'
alias vimdiff='nvim -d'
alias vv='vim ~/.vimrc'
alias vz='vim ~/.zshrc'
alias sz='source ~/.zshrc'

# print the path with each dir on a separated line
alias path='echo -e ${PATH//:/\\n}'

# find lib
alias findlib='ldconfig -p | grep -i $1'

# Git aliases
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias glp="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gst='git status'
alias gd='git diff'
alias gcm='git commit -m'
alias gca='git commit -am'
alias gbr='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcl='git clone'

