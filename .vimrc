" ------------------------------
" BASIC SETTINGS
" ------------------------------
set nocompatible          " Use Vim defaults, not Vi
set encoding=utf-8
set fileencoding=utf-8

" ------------------------------
" UI SETTINGS
" ------------------------------
set number                " Show line numbers
set relativenumber        " Relative line numbers
set cursorline            " Highlight the current line
set showcmd               " Show (partial) command in status line
set ruler                 " Show cursor position
set wildmenu              " Visual autocomplete for command menu
set lazyredraw            " Don't redraw while executing macros
set ttyfast               " Faster redrawing

" ------------------------------
" SEARCH
" ------------------------------
set ignorecase            " Case insensitive searching...
set smartcase             " ...unless using capital letters
set incsearch             " Search as characters are entered
set hlsearch              " Highlight search matches

" ------------------------------
" INDENTATION
" ------------------------------
set autoindent
set smartindent
set expandtab             " Use spaces instead of tabs
set shiftwidth=4          " Number of spaces to use for indent
set tabstop=4             " Number of spaces that a <Tab> in the file counts for
set softtabstop=4         " Number of spaces that a <Tab> feels like
set smarttab              " <Tab> at start of line inserts shiftwidth

" ------------------------------
" FORMATTING
" ------------------------------
set textwidth=100         " Wrap lines at 100 characters
set formatoptions+=cro    " Continue comments when pressing enter
set linebreak             " Break lines at word boundaries

" ------------------------------
" BACKUP / SWAP
" ------------------------------
set noswapfile
set nobackup
set nowritebackup
set undofile              " Enable persistent undo
set undodir=~/.vim/undo   " Ensure this directory exists

" ------------------------------
" PERFORMANCE
" ------------------------------
set updatetime=300        " CursorHold trigger time
set timeoutlen=500        " Shorter delay for mapped sequences

" ------------------------------
" CLIPBOARD
" ------------------------------
set clipboard=unnamedplus " Use system clipboard

" ------------------------------
" KEYBINDINGS
" ------------------------------
let mapleader = "<SPC>"

" ------------------------------
" MISC
" ------------------------------
syntax enable
filetype plugin indent on
set background=dark
colorscheme desert

autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})
