#!/bin/zsh

function quote() {
  /Users/user/desktop/node/cli/app-1/today
}

function cs() {
  cd "$@" && ls;
}

function mkd() {
  mkdir -p "$@" && cd "$_";
}

function node-project {
  git init
  npx license $(npm get init.license) -o "$(npm get init.author.name)" > LICENSE
  npx gitignore node
  npx covgen "$(npm get init.author.email)"
  npm init -y
  git add -A
  git commit -m "Initial commit"
}