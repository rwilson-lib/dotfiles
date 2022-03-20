syntax on
"
" enable all Python syntax highlighting features
let python_highlight_all = 1

let g:mapleader = "\<Space>"
let g:maplocalleader = ';'

" set mouse=a
set termguicolors 
set background=dark
set fileencodings=utf-8,default
set history=1000
set cursorline

set incsearch
set smartcase
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
set wildignore+=**/node_modules/**

set splitbelow
set splitright

set timeoutlen=500

autocmd BufRead,BufNewFile * setlocal signcolumn=auto


if has('gui_running')
    set guioptions=gm " Remove right and left scrolling bar

    if has('win32')
        set guifont=Consolas:h16   " Win32.
    elseif has('gui_macvim')
        set guifont=FiraCodeNerdFontCompleteM-Retina:h16 " OSX.
        set macligatures
    else
        set guifont=Monospace\ 16  " Linux.
    endif
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
    call mkdir($HOME."/.vim/swap-dir", "", 0700)
endif

set directory=~/.vim/swap-dir
set swapfile

set backupdir=~/.vim/backup-dir
set backup

set undodir=~/.vim/undo-dir
set undofile


inoremap <silent> <C-g> <ESC>
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> <leader>gf :e <cfile><cr>
nnoremap <silent> <localleader><localleader> :set relativenumber!<CR>
nnoremap <silent> <localleader><space> :set hls!<CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

 
" Tabs
nmap <silent> <S-H> :tabprev<cr>
nmap <silent> <S-L> :tabnext<cr>
nnoremap <silent> <c-w>t :tabnew<cr>

" ZFZ
nmap <silent><nowait> <leader><space>t :ZTags<CR>
nmap <silent><nowait> <leader><space>f :ZFiles<CR>
nmap <silent><nowait> <leader><space>w :ZWindows<CR>
nmap <silent><nowait> <leader><space>b :ZBuffers<CR>

nmap <silent><nowait> [s :GitGutterStageHunk<CR>
nmap <silent><nowait> [j :GitGutterNextHunk<CR>
nmap <silent><nowait> [k :GitGutterPrevHunk<CR>
nmap <silent><nowait> [h :GitGutterLineHighlightsToggle<CR>

"                [v git-gutter:mark-hunk
"                [o git-gutter:end-of-hunk
"                [d git-gutter:popup-hunk

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

    Plug 'mbbill/undotree'
    Plug 'farmergreg/vim-lastplace'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'ryanoasis/vim-devicons'
    Plug 'xuyuanp/nerdtree-git-plugin'

    Plug 'APZelos/blamer.nvim'
    Plug 'freitass/todo.txt-vim'

    Plug 'plytophogy/vim-virtualenv'
    
    " Docker 
    Plug 'ekalinin/Dockerfile.vim'

    Plug 'puremourning/vimspector'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdtree'
    Plug 'benmills/vimux'
    Plug 'yggdroot/indentline'

    Plug 'easymotion/vim-easymotion'

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

    Plug 'jamessan/vim-gnupg'

    " Plug 'liuchengxu/vim-which-key'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

    " Webdev
    Plug 'hail2u/vim-css3-syntax'
    Plug 'mattn/emmet-vim'
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

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

nnoremap <silent> <leader>bn :NERDTreeToggle<cr>
nnoremap <silent> <leader>bf :NERDTreeFocus<cr>


augroup VIM 
    autocmd Filetype vim nnoremap <buffer> <silent> <Leader>r :source %<CR>
augroup end

set background=dark
" colorscheme PaperColor
colorscheme gruvbox

" air-line
let g:airline_powerline_fonts = 1

" gitgutter
let g:gitgutter_max_signs = -1

" " Configure error/warning section to use coc.nvim
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
let g:airline_theme='papercolor'

let g:vimspector_enable_mappings='HUMAN'

" let g:gutentags_ctags_tagfile '.vim/tags'

let g:user_emmet_leader_key='<C-Z>'

let g:fzf_command_prefix = 'Z'

" Prompt for a command to run
nnoremap <LocalLeader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
nnoremap <LocalLeader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
nnoremap <LocalLeader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
nnoremap <LocalLeader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
nnoremap <LocalLeader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
nnoremap <LocalLeader>vz :call VimuxZoomRunner()<CR>

" Blame
" let g:blamer_enabled = 1
"
" let g:airline_section_y = '%{bufnr("%")} %{winnr()}'
" let g:airline_section_z = airline#section#create_right(['%{getcwd()}'])
function! StatusLineBuffWinNum()
    let bufferNumber = bufnr("%")
    let splitNumber = winnr()
    return bufferNumber . "|" . splitNumber
endfunction

call airline#parts#define_function('BufandSplitNum', 'StatusLineBuffWinNum')
let g:airline_section_u = airline#section#create_right(['BufandSplitNum'])

let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ [ 'x', 'y', 'z', 'warning', 'error', 'u']
\ ]


" Easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

let g:coc_filetype_map = {'tex': 'latex'}

" enable gtags module
" let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_modules = ['gtags_cscope']

" generate datebases in my cache directory, prevent gtags files polluting my project
" let g:gutentags_cache_dir = expand('~/.cache/tags')

" let g:gutentags_gtags_dbpath = "GTAGS"

