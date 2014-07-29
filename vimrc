syntax on
syntax enable

set vb
set number
set ruler
set hlsearch 
set ignorecase

set bs=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab

set autoindent
set cindent

set ff=unix
"se nobomb
"source ~/cscope_maps.vim
"highlight Normal ctermfg=darkgrey  ctermbg=black

execute pathogen#infect()

source ~/.vim/dhexception.vim
source ~/.vim/python.vim


augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END

"Open NERDTree on start
autocmd vimenter * NERDTree
"Open NERDTree on start even with no input files
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Close vim if only NERDTree window is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
