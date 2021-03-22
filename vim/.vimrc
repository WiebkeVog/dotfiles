" Global

set encoding=UTF-8

let mapleader = ","

set relativenumber

set hidden

syntax on

" Highlight current line

set cursorline

" Make tabs as wide as two spaces

set tabstop=2

" Show “invisible” characters

set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

set list

" " Highlight searches

set hlsearch

" " Ignore case of searches

set ignorecase

" Highlight dynamically as pattern is typed

set incsearch

" Always show status line

set laststatus=2

" Enable mouse in all modes

set mouse=a

" Disable error bells

set noerrorbells

" Don’t reset cursor to start of line when moving around.

set nostartofline

" Show the cursor position

set ruler

" Don’t show the intro message when starting Vim

set shortmess=atI

" Show the current mode

set showmode

" Show the filename in the window titlebar

set title

" Show the (partial) command as it’s being typed

set backspace=indent,eol,start



autocmd FileType json syntax match Comment +\/\/.\+$+



source ~/.vimplugins


" Airline Config

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1



" Nerdtree

autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeQuitOnOpen = 1

map <C-n> :NERDTreeToggle<CR>

map <C-f> :NERDTreeFind<CR>





set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/target/*,*/.git/*

set wildignore+=*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/*.pyc,__pycache__,*/tags,*/tags.lock,*/tags.temp,*/tests.db*,*/dist/*



" Ctrl P tags
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>b :CtrlPBuffer<CR>


" Indenctation

filetype plugin indent on

" Rainbow brackets
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" show existing tab with 4 spaces width

set tabstop=4

" when indenting with '>', use 4 spaces width

set shiftwidth=4

" On pressing tab, insert 4 spaces

set expandtab


" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300


" don't give |ins-completion-menu| messages.
set shortmess+=c


" always show signcolumns
set signcolumn=yes


" Better display for messages
set cmdheight=2


" Jump Panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

