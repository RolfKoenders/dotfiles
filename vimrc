set nocompatible

" vim-plug
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" Config
syntax enable
set background=dark
colo seoul256

set term=screen-256color
set guifont=Inconsolata\ 16
set laststatus=2
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set smarttab
set number
set expandtab
set incsearch
set hlsearch
set history=1000
set nobackup
set noswapfile

" Keybinds
let mapleader=","
let g:NumberToggleTrigger="<C-n>"
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>G :Goyo<CR>
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
