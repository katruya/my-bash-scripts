# MY ALIASES

# Edit .bashrc
alias ebrc='code ~/.bashrc && cd -'
alias sbrc='source ~/.bashrc'
alias cbrc='cat ~/.bashrc | less'

# System
alias lla='ls -la'
alias cls='clear'
alias mkf='touch'
alias mkd='mkdir'

# FUCK
alias fuck='sudo'
alias fuckit='sudo su'

alias fuckup='sudo apt update && sudo apt upgrade'

# PG f**k
alias fk='sudo'
alias fkit='sudo su'

alias fkup='sudo apt update && sudo apt upgrade'

# git commands
alias gnt='git init'

alias gc='git clone'

alias ga='git add'

alias gaa='git add .'

alias gcmt='git commit -m'

alias glg='git log'

alias gst='git status'

alias gph='git push'

# node/npm commands
alias js='node'
alias nit='npm init'
alias ni='npm install'
alias nps='npm start'
alias npt='npm test'
alias demon='nodemon --exitcrash'

# Compile & Run - C++
alias cppc='g++ -I -std=c++14 *.cpp -o app && ./app'

# run custom scripts
alias kat='~/scripts/new_project.sh'
alias fdmkr='~/scripts/folder_maker.sh'
alias flmkr='~/scripts/file_maker.sh'

# MY FUNCTIONS
function rename () {
    mv "$1" "$2"
}

function remove () {
    rm -rfi "$1"
}