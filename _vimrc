set nocompatible
set showcmd
set incsearch
set autoindent
set number
set go=
set shiftwidth=4
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
set fileencodings=ucs-bom,utf-8,chinese

syntax on

filetype plugin indent on
colorscheme desert

autocmd FileType cpp set makeprg=g++\ %
autocmd FileType c set makeprg=gcc\ %
autocmd FileType haskell set makeprg=ghc\ -o\ a.out\ --make\ %
autocmd FileType sh set makeprg=chmod\ 777\ %
autocmd FileType tex set makeprg=pdflatex\ %
autocmd FileType java set makeprg=javac\ %
autocmd FileType mp set makeprg=mpost\ %
let mapleader = ","

autocmd FileType cpp,c,haskell,tex,java,sh,mp  map <buffer> <leader><space> :w<cr>:make<cr>
autocmd FileType cpp,c,haskell  map <buffer> <leader>r :!./a.out<cr>
autocmd FileType sh map <buffer> <leader>r :!./%<cr>
autocmd FileType java map <buffer> <leader>r :!java %<<cr>
autocmd FileType python map <buffer> <leader>r :w<cr>:!python %<cr>

nmap <leader>cn :cn<cr>
nmap <leader>cp :cp<cr>
nmap <leader>cw :cw 10<cr>
