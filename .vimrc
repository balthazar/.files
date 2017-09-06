" ============================================================================ "
"                                                                              "
" ---------                         vim                                ------- "
"                                                                              "
" ============================================================================ "


" Mapping
let mapleader=","

" easymotion trigger with only 1 leader
map <Leader> <Plug>(easymotion-prefix)

" dvorak window focus move
nnoremap <Space> <NOP>
nmap <silent> <Space>h :wincmd h<CR>
nmap <silent> <Space>t :wincmd j<CR>
nmap <silent> <Space>n :wincmd k<CR>
nmap <silent> <Space>s :wincmd l<CR>

" auto indent paste
nnoremap p p=`]
nnoremap <S-t> <S-p>=`]

" select pasted text
nnoremap gp `[v`]

if has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin\n"
    nnoremap þ :m .+1<CR>==
    nnoremap ñ :m .-2<CR>==
    inoremap þ <Esc>:m .+1<CR>==gi
    inoremap ñ <Esc>:m .-2<CR>==gi
    vnoremap þ :m '>+1<CR>gv=gv
    vnoremap ñ :m '<-2<CR>gv=gv
  endif
endif

" Plugins

filetype off

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'

Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
Plug '42Zavattas/vim-snippets', { 'branch': 'develop' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'

Plug 'w0rp/ale'
Plug 'prettier/vim-prettier'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'tomlion/vim-solidity'

call plug#end()
filetype plugin indent on

" Aliases
command Sp set paste
command Np set nopaste

" Need explanation ?
syntax on

" The chosen one
colorscheme solarized
set background=dark

set mouse=c

" Encoding, etc.
set encoding=utf-8
set termencoding=utf-8

" Correct strange bug
set backspace=indent,eol,start

" Insert space characters whenever <tab> is pressed
set expandtab

" Number of spaces inserted when hitting <tab>
set tabstop=2

" Number of spaces inserted when using :retab
set shiftwidth=2

" Don't wrap long lines
set nowrap

" Always show status bar
set laststatus=2

" Number of lines to keep above & below cursor when scrolling
set sidescrolloff=15
set sidescroll=1
" set scrolloff=8

" Auto reload files when changed
set autoread

" Show the 80 chars column
set colorcolumn=80

" Don't create useless files
set noswapfile
set nobackup
set nowb

" Hide unsaved buffers
set hidden

" Show cursor line
set cursorline

" Move on search
set incsearch

" Show line numbers
set number

" Show infos in status bar
set ruler

" Prevent annoying highlight on search
set nohlsearch

" More intelligent searches
set ignorecase
set smartcase

" Never use Ex useless mode
nnoremap Q <ESC>

" Show blank characters
set listchars=tab:>-,trail:·,nbsp:%
set list

" Transparent bg <3
hi Normal ctermbg=NONE

" Opening tab completion
set wildmode=longest,full
set wildignore=*.o,*.obj,*~
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*node_modules*
set wildignore+=*ios/*
set wildignore+=*android/*
set wildignore+=*bower_components*
set wildignore+=*plugins*
set wildignore+=*platforms*
set wildignore+=*release*
set wildignore+=*coverage*
set wildignore+=*dist*,*dist-server*
set wildmenu

" Visual helpers
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd VimResized * :wincmd =

highlight link xmlEndTag xmlTag

" Lightline
let g:lightline = {
\   'colorscheme': 'solarized',
\   'active': {
\     'left': [ [ 'mode', 'paste' ], [ 'readonly', 'relativepath', 'modified' ] ],
\     'right': [ [ 'lineinfo' ] ]
\    },
\   'inactive': {
\     'left': [ ['relativepath' ] ],
\     'right': []
\    },
\ }

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Vim JSX
let g:jsx_ext_required = 0

" NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'

" Prettier
let g:prettier#config#print_width = 100
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'trie'
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#parser = 'babylon'

let g:prettier#autoformat = 0
autocmd BufWritePre,InsertLeave,TextChanged *.js,*.ts,*.tsx,*.css,*.scss,*.json PrettierAsync

" CtrlP
let g:ctrlp_show_hidden = 1

" ale
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_sign_error = '✖'
let g:ale_sign_warning = 'ℹ'
