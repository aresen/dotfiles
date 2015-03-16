" load plugins
call plug#begin('~/.vim/plugged')

Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-vinegar'
Plug 'techlivezheng/vim-plugin-minibufexpl'

call plug#end()

colorscheme desert
set background=dark

" history
set history=300

" filetype plugin
filetype plugin on
filetype indent on

" Turn backup off
set nobackup
set nowb
set noswapfile

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
" splits

" move between splits
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

" minibufexpl settings
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" MiniBufExpl Colors
 hi MBENormal               guifg=#808080 guibg=fg
 hi MBEChanged              guifg=#CD5907 guibg=fg
 hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
 hi MBEVisibleChanged       guifg=#F1266F guibg=fg
 hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
 hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
