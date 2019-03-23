let mapleader = "\<Space>"

set background=dark
colorscheme base16-atelier-dune

set nocompatible

" ####################### PLUGINS ######################## 
call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'  " Status line at the bottom
Plug 'w0rp/ale'               " Linter
Plug 'justinmk/vim-highlightedyank'

call plug#end()

" ###################### ALE CONFIG ###################### 
let g:ale_linters = {'rust': ['rls','rustfmt']}
let g:ale_rust_rls_toolchain = 'stable'

" ################### LANGUAGE CONFIGS ################### 

" ####################### KEY MAPS ####################### 
nmap <leader>w :w<CR>
nmap <leader>q <C-w>q

nnoremap ; :

" Better line navigation
nnoremap j gj
nnoremap k gk

" Disable arrowkeys
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" #################### EDITOR OPTIONS ####################
set autoindent	     " Copy indentation from previous line
set encoding=utf-8
set nowrap           " Long lines are shown as one line
set number 
set relativenumber

set splitbelow
set splitright

" Permanent undo
set undodir=~/.vimundo
set undofile

" Set 4 space tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

