set nocompatible

" vim-plug
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim'
Plug 'tpope/vim-fugitive'
call plug#end()

syntax on
color dracula
let g:airline_theme='murmur' " vim-airline theme

set guifont=Monaco\ 14
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

" make backspace behave in a sane manner
set backspace=indent,eol,start
" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Keybinds
let mapleader=","
let g:NumberToggleTrigger="<C-n>"
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :CtrlP<CR>
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
