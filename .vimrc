syntax on

let mapleader = ","
let maplocalleader = ";"

set mouse=a
set background=dark
set fileencodings=utf-8,default
set history=1000
set incsearch
set ruler
set scrolloff=5
set showcmd
set wildmenu
set number


set smartindent
set autoindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set path+=**

set splitbelow
set splitright

if has('gui_running')
    if has('win32')
        set guifont=Consolas:h16   " Win32.
    elseif has('gui_macvim')
        set guifont=FiraCodeNerdFontCompleteM-Retina:h16 " OSX.
    else
        set guifont=Monospace\ 16  " Linux.
    endif
    set guioptions-=rL " Remove right and left scrolling bar
endif
if has('nvim')
    " start terminal in insert mode
    au BufEnter * if &buftype == 'terminal' | :startinsert | endif
    " open terminal on ctrl+;
    " uses zsh instead of bash
    function! OpenTerminal()
      split :terminal
      resize 10
    endfunction
    nnoremap <c-n> :call OpenTerminal()<CR>
endif
if has('vim')
    augroup TERMINAL
        au TerminalOpen,TerminalWinOpen,BufEnter * if &buftype == 'terminal'
            \ | setlocal laststatus=0
            \ | setlocal noruler
            \ | setlocal noshowcmd
            \ | setlocal cmdheight=1
            \ | endif
        au BufLeave * if &buftype == 'terminal'
            \ | setlocal ruler
            \ | setlocal showcmd
            \ | setlocal cmdheight=1
            \ | endif
        au BufDelete * if &buftype == 'terminal'
            \ | setlocal laststatus=2
            \ | setlocal ruler
            \ | setlocal showcmd
            \ | setlocal cmdheight=1
            \ | endif
    augroup end
endif
" Let's save undo info!
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif

if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif


if !isdirectory($HOME."/.vim/backup-dir")
    call mkdir($HOME."/.vim/backup-dir", "", 0700)
endif

if !isdirectory($HOME."/.vim/swap-dir")
    call mkdr($HOME."/.vim/swap-dir", "", 0700)
endif

set directory=~/.vim/swap-dir
set swapfile

set backupdir=~/.vim/backup-dir
set backup

set undodir=~/.vim/undo-dir
set undofile


inoremap <silent> jj <ESC>
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> <leader>gf :e <cfile><cr>
nnoremap <silent> <localleader><localleader> :set relativenumber!<CR>
nnoremap <silent> <localleader><space> :set hls!<CR>

" Splits
nmap <silent> <C-k> :winc k<cr>
nmap <silent> <C-h> :winc h<cr>
nmap <silent> <C-l> :winc l<cr>
nmap <silent> <C-j> :winc j<cr>

" Tabs
nmap <silent> <S-H> :tabprev<cr>
nmap <silent> <S-L> :tabnext<cr>

" Vista
nmap <silent> <leader>bx :Vista!!<CR>
nmap <silent> <leader>bc :Vista coc<CR>
nmap <silent> <leader>bt :Vista ctags<CR>
nmap <silent> <leader>b<space> :Vista finder<CR>

" ZFZ
nmap <silent> <space><space> :ZTags<CR>
nmap <silent> <space>a :ZAg<CR>
nmap <silent> <space>f :ZFiles<CR>
nmap <silent> <space>w :ZWindows<CR>
nmap <silent> <space>b :ZBuffers<CR>


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'xuyuanp/nerdtree-git-plugin'

    Plug 'puremourning/vimspector'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdtree'
    Plug 'benmills/vimux'
    Plug 'yggdroot/indentline'

    Plug 'mileszs/ack.vim'
    Plug 'liuchengxu/vista.vim'
    Plug 'ludovicchabant/vim-gutentags'

    Plug 'scrooloose/nerdcommenter'

    Plug 'morhetz/gruvbox'
    Plug 'nlknguyen/papercolor-theme'


    Plug 'peitalin/vim-jsx-typescript'
    Plug 'honza/vim-snippets'
    Plug 'sheerun/vim-polyglot'

    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

    Plug 'ap/vim-css-color'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'mattn/emmet-vim'

    Plug 'airblade/vim-rooter'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-tabnine', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-snippets'
    Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

" Initialize plugin system
call plug#end()

source ~/.vimrc_coc
source ~/.vimrc_nerdtree
source ~/.vimrc_coc_markdown
source ~/.vimrc_python
source ~/.vimrc_web
source ~/.vimrc_vimspector
source ~/.vimrc_vista

nnoremap <leader>n :NERDTreeToggle<cr>


augroup VIM 
    autocmd Filetype vim nnoremap <buffer> <silent> <Leader>r :source %<CR>
augroup end

set background=dark
" colorscheme PaperColor
colorscheme gruvbox

" air-line
let g:airline_powerline_fonts = 1

" " Configure error/warning section to use coc.nvim
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
let g:airline_theme='papercolor'

let g:vimspector_enable_mappings='HUMAN'

let g:bracey_server_port=8000

let g:user_emmet_leader_key='<C-Z>'

let g:fzf_command_prefix = 'Z'

" Prompt for a command to run
nnoremap <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
nnoremap <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
nnoremap <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
nnoremap <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
nnoremap <Leader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
nnoremap <Leader>vz :call VimuxZoomRunner()<CR>
