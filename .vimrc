filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on


set rtp+=$GOROOT/misc/vim

set nocompatible

set modelines=0

"Standard stuff
syntax on
filetype on
set ai
set ruler
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set expandtab "2 space tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set si
set number

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set undofile

" Regex and search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

" Movement
nnoremap j gj
nnoremap k gk

" Get rid of F1
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" ; = :
nnoremap ; :

" Save on moving focus
" au FocusLost * :wa

" Open this file quickly in split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" jj as ESC for moving back into normal mode
inoremap jj <ESC>

" Split window and move focus to new window
nnoremap <leader>w <C-w>v<C-w>l

" Nagivating between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Parenthesis/bracket expanding
vnoremap ( <esc>`>a)<esc>`<i(<esc>
vnoremap [ <esc>`>a]<esc>`<i[<esc>
vnoremap { <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap ' <esc>`>a'<esc>`<i'<esc>
vnoremap " <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
""inoremap ( ()<esc>i
""inoremap [ []<esc>i
""inoremap { {}<esc>i
""inoremap ' ''<esc>i
""inoremap " ""<esc>i
""inoremap < <><esc>i

"Highlight search
set hlsearch
set incsearch
set showmatch

" F4 to turn on and off search highlighting
:noremap <F4> :set hlsearch! hlsearch?<CR>

" Highlight trailing spaces
highlight RedundantSpaces ctermbg=white guibg=white
match RedundantSpaces /\s\+$\| \+\ze\t/
hi NonText guifg=white guibg=white

" Leader 
let mapleader = ","
let g:mapleader = ","

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" Command-T
let g:CommandTMaxHeight = 15
set wildignore+=*.o,*.obj,.git,*.pyc
noremap <leader>j :CommandT<cr>
noremap <leader>y :CommandTFlush<cr>

" Ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
" :Ack [options] {pattern} [{directory}]
nnoremap <leader>a :Ack

