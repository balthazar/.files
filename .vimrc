set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'SirVer/ultisnips'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'lukaszb/vim-web-indent'

syntax enable
set background=dark
colorscheme solarized

filetype plugin indent on
syntax on

set expandtab
set shiftwidth=2
set tabstop=2
set sidescrolloff=15
set colorcolumn=80
set noswapfile
set nobackup
set nowb
set hidden
set autoread
set visualbell
set t_Co=256
set cursorline
set hlsearch
set wildmenu
set nowrap
set number
set ruler
set scrolloff=8
set sidescroll=1

set wildmode=longest,full
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

au Bufenter *.c set comments=sl:/*,mb:**,elx:*/
au Bufenter *.h set comments=sl:/*,mb:**,elx:*/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd FileType html,css setlocal shiftwidth=2 tabstop=2

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_powerline_fonts=1
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8

command Sp set paste
command Np set nopaste

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<shift><tab>"

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

let NERDTreeMinimalUI=1
let NERDTreeCasadeOpenSingleChildDir=1
set modifiable

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
