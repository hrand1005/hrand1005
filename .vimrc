set nocompatible
filetype off

"plugins
call plug#begin()

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'fatih/vim-go'

call plug#end()

syntax on
set smartindent
set hidden
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
filetype indent on
set autoindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set textwidth=80
set nowrap
set linebreak
set wrapmargin=2
set scrolloff=8
set sidescrolloff=15
set laststatus=2
set ruler
set showmatch
set nohlsearch
set incsearch
set ignorecase
set smartcase
set noswapfile
set nobackup
set undofile
set undodir=~/.vim/undo//
set autochdir
set noerrorbells
set visualbell
set history=1000
set autoread
set wildmenu
set wildmode=longest:list,full
set number
set signcolumn=yes
set colorcolumn=80

colorscheme gruvbox
set background=dark

