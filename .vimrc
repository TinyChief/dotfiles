" THE VIM CONFIG FOCUSED ON WEB DEVELOPMENT
" Made by Vadim Yuldashbaev (github.com/TinyChief)

set nocompatible                "THIS MUST BE HERE

" ================ General Config ====================

" --- visual ---
set number relativenumber       "Relative or Absolute line numbers
set showtabline=2               "Show tabline
set cursorline

" --- other ---
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" --- performance / buffer ---
set hidden                  " can put buffer to the background without writing

" --- keys ---
set backspace=indent,eol,start  " allow backspacing over everything.
set timeoutlen=500              " how long it wait for mapped commands
set ttimeoutlen=200             " faster timeout for escape key and others

" --- colors ---
if !has('gui_running')
  set t_Co=256
endif
syntax on

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" ================ Turn Off Swap Files (don't know what it do) ==============
set noswapfile
set nobackup
set nowb


" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set ts=2
set expandtab

" --- search / regexp ---
set gdefault                " RegExp global by default
set magic                   " Enable extended regexes.
set hlsearch                " highlight searches
set incsearch               " show the `best match so far' astyped
set ignorecase smartcase    " make searches case-insensitive, unless they
                            "   contain upper-case letters

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

set wrap          " Wrap lines
set linebreak     " Wrap lines at convenient points


" ================ Completion =======================
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif


" ================ Scrolling ========================
set scrolloff=3         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
filetype off                  " (?) required


" ================= Custom ========================
set clipboard=unnamed
set laststatus=2
set noshowmode
set splitright          " Split windows to right and below
set splitbelow


" ================= Bindings ========================
"" resize current buffer by +/- 5 
nmap 7 :vertical res +5<CR> " vertical increase pane by 5
nmap 8 :res +5<CR> " increase pane by 5 
nmap 9 :res -5<CR> " decrease pane by 5
nmap 0 :vertical res -5<CR> " vertical decrease pane by 5

" to move visual lines not paragraphs
nmap j gj
nmap k gk
" CapsLock as Esc (For linux)
" au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
inoremap jj <Esc>
inoremap kj <Esc>
inoremap kk <Esc>
inoremap jk <Esc>

let mapleader="\<Space>"
nmap <leader>w :w<CR>

" Clear the search highlight
nnoremap <silent> \ :silent nohlsearch<CR>

" Move betweens buffers with Ctrl + <h, j, k, l>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Open new splits easily
map vv <C-W>v
map ss <C-W>s
map Q  <C-W>q

" Binds to easily configure Vim
map <leader>vl :vsp ~/.vimrc<CR>
map <leader>nl :vsp ~/.config/nvim/init.vim<CR>
map <leader>vr :source $MYVIMRC<CR>
map <leader>pi :PluginInstall<CR>

" NERDTREE
nmap <silent> <leader>e :NERDTreeToggle<CR>


"=================  VUNDLE ============================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " plugin manager
" Plugin 'valloric/youcompleteme'
Plugin 'sheerun/vim-polyglot'
Plugin 'itchyny/lightline.vim' " status bar
Plugin 'scrooloose/nerdtree' " directory tree for vim
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround' " edit surrounding wtags
Plugin 'scrooloose/syntastic' " validation scripts
Plugin 'terryma/vim-multiple-cursors' " sublime multiple cursors
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy file finder with ctrl-p
Plugin 'easymotion/vim-easymotion' " vim easymotion
" avascript
Plugin 'isRuslan/vim-es6'
Plugin 'posva/vim-vue'
Plugin 'prettier/vim-prettier' " plugin for code formatting
Plugin 'Galooshi/vim-import-js' " auto importing for js
" colorscheme
Plugin 'morhetz/gruvbox'
Plugin 'dikiaap/minimalist'
Plugin 'joshdick/onedark.vim'

call vundle#end()

filetype plugin indent on    " required

" If vim opened w/o args automaticly launch NERDTree
autocmd VimEnter * if !argc() | NERDTree | endif 


" --- Cursor and cursorline --- 
" Change cursor style on different modes
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

" Cursor Line Number
hi CursorLineNR ctermfg=white 


" -----------------------------------------------------------------------------
" PLUGINS
" -----------------------------------------------------------------------------
" --- YCM ---
let g:ycm_show_diagnostics_ui = 0

" --- CtrlP ---
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_working_path_mode = 'c'

" --- NERDTree ----
let NERDTreeIgnore=['.DS_Store']
let NERDTreeShowBookmarks=0         "show bookmarks on startup
let NERDTreeHighlightCursorline=1   "Highlight the selected entry in the tree
let NERDTreeShowLineNumbers=0
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen = 1
let NERDTreeDirArrows = 1

" --- NERDCommenter ---
let NERDSpaceDelims=1              " space around delimiters
let NERDRemoveExtraSpaces=3
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction

" ---- LightLine -----
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ }
      \ }
let g:lightline.separator = {
      \   'left': '', 'right': ''
      \}
let g:lightline.subseparator = {
      \   'left': '', 'right': ''
      \}
let g:lightline.tabline = {
      \   'left': [ ['tabs'] ],
      \   'right': [ ['close'] ]
      \ }


" -----------------------------------------------------------------------------
" CUSTOM_FUNCTIONS
" -----------------------------------------------------------------------------

" --- Strip trailing whitespace ---
function! StripWhitespace ()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction

" Trailing white space (strip spaces)
noremap <leader>ss :call StripWhitespace()<CR>

" -----------------------------------------------------------------------------
" COMMON_STUFF
" -----------------------------------------------------------------------------

colorscheme onedark
