syntax on

set belloff=all
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set nu
set smartcase
set nobackup
set nowritebackup
set noswapfile
set expandtab
set incsearch
set title
set autoread
set cursorline
set relativenumber
set clipboard=unnamedplus
set mouse=a
set signcolumn=yes
set wrap
set linebreak
set splitbelow
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <CR> :noh<CR><CR>

filetype plugin indent on
filetype indent on
set backspace=indent,eol,start

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'vim-scripts/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'crusoexia/vim-monokai'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-python/python-syntax'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

tnoremap jj <C-\><C-n>
inoremap jj <esc>

inoremap <C-h> <Left>   
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = expand('/Users/saivishwakkorimerla/opt/anaconda3/bin/python3')
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:python_highlight_all = 1
let g:python_highlight_indent_errors = 0
let g:python_highlight_space_errors = 0

set background=dark
colorscheme onedark
#For mac os terminal
#set notermguicolors
set termguicolors
let g:airline_theme='gruvbox'

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
