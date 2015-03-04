" load plugins
call plug#begin('~/.vim/plugged')

Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-vinegar'

call plug#end()

colorscheme desert
set background=dark

" history
set history=0

" filetype plugin
filetype plugin on
filetype indent on

" autoread when file is changed
set autoread

" show current position
set ruler

" highlight search results
set hlsearch

" syntax highlighting
"set syntax

" line numbering
set number

" highlight current line
set cursorline

" highlight matching parentheses
set showmatch

" search as characters are entered
set incsearch

" utf8
set encoding=utf8

""""""""""""""""""""""""""""""""
" tabs

" use spaces instead of tabs
set expandtab

set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" auto indent, smart indent, wrap lines
set ai
set si
set wrap

""""""""""""""""""""""""""""""""
" windows

" move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" rainbow parentheses

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
