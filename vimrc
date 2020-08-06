" yet another vim config
" 2020
" github.com/vescame
" v.escame@gmail.com

" no vi extended compatibility
" should be set at the very beginning
set nocompatible

" remove all auto commands so i can assign it only once
autocmd!

" leader key mapped to space
let mapleader=" "

" set my ~/[._]vim directory (for portable config)
let g:vim_dir=fnamemodify($MYVIMRC, ":h")

" search recursively
set path+=**

" completely stop bells
set visualbell
set t_vb=

" dark background
set background=dark

" enable syntax highlight
syntax on

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" shared clipboard
set clipboard=unnamed,unnamedplus

" backspace for deleting too
set backspace=indent,eol,start

" numbers and relative number
set number relativenumber

" highlight current line
set cursorline

" file encoding
set encoding=utf-8
set ffs=unix,dos,mac " Unix for default file format
setglobal fileencoding=utf-8

set autoindent smartindent " smart indentation
set wrap                   " wrap long lines 'on the next line'
set formatoptions+=t       " since wrap is enabled, wrap starts at the 80th

" => TABS ARE EVIL
" ================
set shiftwidth=2   " number of spaces to use for (auto)indent step
set tabstop=2      " tab spaces
" tab size when editing, but since tabs are spaces, spaces number when editing
set softtabstop=2
set expandtab      " turn tabs to space

set ignorecase     " ignore case when searching
set smartcase      " when we have different cases, make case sensitive search
set hlsearch       " highlight search results
set incsearch      " search while typing

" show completion in menu
set wildmenu

" list completion, better way since it doesnt complete non unique commands
set wildmode=list:longest,list:full

" highlight matching bracket
set showmatch

" show partial command line status
set showcmd

" file type plugins enabled
filetype plugin indent on

" for performance while executing macros, IO is heavy bro
set lazyredraw

" expose special characters
if $LANG =~ "utf-8"
  set list listchars=tab:»·,trail:·,nbsp:·
else
  set list listchars=tab:>-,trail:.,nbsp:%
endif

" no comment when we create a new line starting by a commented line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" by default, when vertically splitting, use right for the new window
set splitbelow
set splitright

" use vertical diff by default
set diffopt+=vertical

" spell
set spelllang=en_gb,pt_br

" highlight every char after the 80th column
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

