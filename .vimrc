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

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Plugins

filetype off

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

Plug 'SirVer/ultisnips'
Plug '42Zavattas/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'

Plug 'w0rp/ale'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'tomlion/vim-solidity'
Plug 'flowtype/vim-flow'
Plug 'jparise/vim-graphql'
Plug 'ap/vim-css-color'

call plug#end()
filetype plugin indent on

" Aliases
command Sp set paste
command Np set nopaste
command Pretty :%!jq .

" Need explanation?
syntax on

" Colors
colorscheme gruvbox
set background=dark

" Transparent bg <3
hi Normal ctermbg=NONE

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
set scrolloff=8

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

" Opening tab completion
set wildmode=longest,full
set wildignore=*.o,*.obj,*~
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*node_modules*
set wildignore+=*ios*
set wildignore+=*android*
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

" Line
let g:airline_powerline_fonts = 1

" Flow
let g:flow#enable = 0

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

" FZF
let g:fzf_layout = { 'down': '~50%' }
nnoremap <c-f> :Find<space>
nnoremap <Leader>f :Find<space><C-r><C-w><cr>
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" custom files preview
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, <bang>0)

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" create file with subdirectories if needed :E
function s:MKDir(...)
    if         !a:0
           \|| stridx('`+', a:1[0])!=-1
           \|| a:1=~#'\v\\@<![ *?[%#]'
           \|| isdirectory(a:1)
           \|| filereadable(a:1)
           \|| isdirectory(fnamemodify(a:1, ':p:h'))
        return
    endif
    return mkdir(fnamemodify(a:1, ':p:h'), 'p')
endfunction
command -bang -bar -nargs=? -complete=file E :call s:MKDir(<f-args>) | e<bang> <args>

" ale
let g:ale_linters = { 'javascript': ['xo'] }
let g:ale_fixers = { 'javascript': ['prettier'], 'typescript': ['prettier'] }

let g:ale_fix_on_save = 1
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'
let g:ale_javascript_prettier_use_local_config = 1
