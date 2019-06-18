set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
set guifont=Hack\ Nerd\ Font\ Mono:h16
set linespace=10
set guicursor=n:block-CursorNormal,i:ver10-CursorInsert,v:block-CursorVisual

hi! CursorNormal guibg=#f3a082
hi! CursorInsert guibg=#f3a082
hi! CursorVisual guibg=#6d33ff

call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
call plug#end()
